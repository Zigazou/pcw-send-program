#!/bin/bash
# Transfer bit rate.
BITRATE=4800

# Strings used to remotely control the Amstrad PCW.
ED_INSERT_MODE='i\n'
ED_COMMAND_MODE='\033'
ED_WRITE_BUFFER='1000w\n'
ED_WRITE_EXIT='e\n'
ED_CMD_READY='     : *'
ED_FIRST_LINE='    1:  '
CPM_PROMPT='A>'

# Display usage and exit the script.
function usage() {
    local b # ends bold/highlight mode.
    local B # starts bold/highlight mode.
    local g # ends bright green foreground color.
    local G # starts bright green foreground color.

    b=$(tput sgr0)
    B=$(tput bold)
    g=$(tput sgr0)
    G=$(tput bold ; tput setaf 2)

    cat <<EOM

Usage: $G$0 binary_file serial_device$g
       $G$0 [-h|--help]$g

$0 is a low requirements Bash script.

It transfers one binary file from a Linux system to an Amstrad PCW which has \
no other communication medium than a $B CPS8256$b serial/parallel interface. \
No special Amstrad PCW software is required, only the standard$B CP/M Plus \
system disk$b and$B Programming utilities disk$b are required.

On the Linux side, the only specific requirement is the$B objcopy$b command \
line tool which comes with the$B binutils$b package.

Hardware requirements:

    - Amstrad PCW
    - Amstrad CPS8256
    - PC
    - RS232 cable between the Amstrad PCW and the PC

Here's how to use this script.

1. On the Amstrad PCW

    1a. Boot on the CP/M Plus system disk

    1b. Type the following commands:

        ${G}A> pip m:=ed.com$g
        ${G}A> setsio $BITRATE interrupt on$g

    1c. Replace the CP/M Plus system disk with the Programming utilities disk

    1d. Type the following commands:

        ${G}A> device con:=sio$g

    Note: at this point, the Amstrad PCW stops displaying text and stops
          listening to keyboard.

2. On the Linux system

    2a. Find the special file on which is installed your serial port.
        You can use USB to RS232 adapter. In this case, the special file may be
        /dev/ttyUSB0.

    2b. Ensure the current user has read/write permissons on this special file.
        On Debian systems, the user, group and permissions are generally
        root:dialout crw-rw----. You can either su root, or
        usermod -a -G dialout \$LOGNAME or chmod o+rw /dev/ttyUSB0.

    2c. Ensure you have the binary file to transmit.

    2d. Run the script:

        ${G}\$ bash $0 program.com /dev/ttyUSB0$g

    2e.$B Please, be patient!$b Due to the way this script works, transfer
        requires several minutes to complete. This script is meant to be run
        once and then use the transmitted program to send back and forth files
        at a higher rate through serial line.

3. On the Amstrad PCW

    3a. Once the script has run, your program is available on the m: disk.
    3b. Control is given back to the Amstrad PCW.

EOM

    exit 0
}

# Display an error message and exit the script.
# INPUT: $1=error message
#        $2=exit code (must be > 0)
function error() {
    printf "%s\n" "$1" >&2
    exit "$2"
}

# Wait until a specific string has been sent to the standard input.
# INPUT: $1=string to wait for
#        $2=maximum number of characters to read before cancelling
# RETURN: 0=string found
#         1=maximum character reached
#         2=timeout
function waituntil() {
    local waited    # String to wait for.
    local buffer    # The buffer that stores every character read.
    local maxbuffer # Maximum buffer length.
    local IFS       # Field separator.
    local character # One character.

    # Initializes variables.    
    waited="$1"
    maxbuffer="$2"
    buffer=""

    # Space must be treated as a standard character.
    IFS=''

    # Read character by character.
    while read -t 30 -r -s -N 1 character
    do
        # Output the character on the error output.
        printf "%s" "$character" >&2

        # Append the character to the buffer.
        buffer="${buffer}${character}"

        # Has the waited string been encountered?
        [ "${buffer: -${#waited}}" == "$waited" ] && return 0

        # Has the buffer overflown?
        [ "${#buffer}" -gt "$maxbuffer" ] && return 1
    done

    # No character happened during 60 seconds.
    return 2
}

# Transfer an Intel HEX file through serial line by sending direct commands to
# the Amstrad PCW.
# INPUT: $1=file to transfer
#        $*=lines to send
function transferfile() {
    local sourcefile # Source file name, used to generate the final file.
    local linenumber # Next line number to be inserted.
    local linestart  # String indicating ED got our line.
    local linecount  # Inserted line count.

    sourcefile="$1"
    shift

    # Run the ed editor.
    printf "m:ed m:$sourcefile\n"
    waituntil "$ED_CMD_READY" 256 || error "Never received '$ED_CMD_READY'" 11

    # Enter insert mode.
    printf "$ED_INSERT_MODE"
    waituntil "$ED_FIRST_LINE" 80 || error "Never received '$ED_FIRST_LINE'" 11

    linenumber=2
    linecount=0
    while [ $# -ne 0 ]
    do
        # Write one line.
        printf "$1"

        printf -v linestart "%5d:  " $linenumber
        waituntil "$linestart" 160 || error "Never received '$linestart'" 11

        # Go to next line.
        linenumber=$((linenumber + 1))
        linecount=$((linecount + 1))

        # Flush buffer every 100 lines sent. The CP/M ED context editor has a
        # limited buffer. It needs to be regularly flushed to disk to avoid a
        # buffer overflow.
        if [ $linecount -ge 100 ]
        then
            linecount=0

            # Return to command mode.
            printf "$ED_COMMAND_MODE"
            waituntil "$ED_CMD_READY" 80 \
                || error "Never received '$ED_CMD_READY'" 11

            # Write buffer.
            printf "$ED_WRITE_BUFFER"
            waituntil "$ED_CMD_READY" 80 \
                || error "Never received '$ED_CMD_READY'" 11

            # Return to insert mode.
            printf "$ED_INSERT_MODE"
            waituntil "$linestart" 80 || error "Never received '$linestart'" 11
        fi

        # Continue with the next line.
        shift
    done

    # Escape insert mode.
    printf "$ED_COMMAND_MODE"
    waituntil "$ED_CMD_READY" 80 || error "Never received '$ED_CMD_READY'" 11

    # Write file and exit.
    printf "$ED_WRITE_EXIT"
    waituntil "$CPM_PROMPT" 80 || error "Never received '$CPM_PROMPT'" 11

    # Convert HEX file to COM file.
    printf "hexcom m:$(basename "$sourcefile")\n"
    waituntil "$CPM_PROMPT" 2048 || error "Never received '$CPM_PROMPT'" 11

    # Give back the control to the Amstrad PCW.
    printf "m:device con:=crt\n"
}

# Check parameters.
[ -z "$1" -o -z "$2" -o "$1" == "-h" -o "$1" == "--help" ] && usage
[ -f "$1" ] || error "File not found '$1'" 10
[ -c "$2" ] || error "Serial device not found '$2'" 12
[ -r "$2" ] || error "Cannot read serial device '$2'" 13
[ -w "$2" ] || error "Cannot write serial device '$2'" 14
which objcopy > /dev/null \
    || error "objcopy not found, please install binutils package" 15

# Configure the serial line.
printf "Configuring $2 at ${BITRATE}bps... "
stty "--file=$2" $BITRATE -echo || error "Unable to configure '$2'" 16
printf "OK\n"

# Convert binary file to Intel Hex format. The output needs to be filtered
# because objcopy inserts a Start Segment Address record (type 03, dedicated to
# x86 architecture) before the End of File record. Because HEXCOM does not
# interpret the record type field, it is confused by this special record and
# thinks we are trying to write below the 0x100 address (which is a reserved
# zone under CP/M).
hexfile="${1%.*}.HEX"
printf "Converting binary file $1 to Intel HEX format $hexfile... "
objhex=$(objcopy -I binary "$1" --change-addresses=256 -O ihex >(cat) \
        | grep -v "^:04000003")
[ $? -ne 0 ] && error "Unable to convert '$1' to '$hexfile'" 17
printf "OK\n"

# Send commands to recreate the file on the PCW. Complete file is given to the
# function via its arguments to avoid using standard input/output for reading
# it because it can have side effects the serial communication.
printf "Sending $hexfile to the Amstrad PCW through $2"
transferfile "$hexfile" $objhex \
    > "$2" < "$2" \
    || error "Error while transfering '$hexfile'" 20
printf "OK\n"

printf "\nYou can now check $1 is available on the Amstrad PCW m: disk\n\n"

