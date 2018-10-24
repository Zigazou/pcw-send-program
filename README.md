pcw-send-program.bash
=====================

`pcw-send-program.bash` is a standalone Bash script that allows you to send a
program file to an Amstrad PCW using just an RS232 serial line.

There is no other requirement for the Amstrad PCW other than a compatible
Amstrad CPS8256 parallel/serial port adapter.

It should even be possible to use it on other CP/M systems because the script
uses standard CP/M tools.

## Requirements

### Hardware

You will need:

- an Amstrad PCW (obviously)
- an Amstrad CPS8256 serial/parallel port adapter
- a modern computer
- an RS232 cable between the Amstrad PCW and the PC

If your computer does not have an RS232 port, there exists cheap USB to RS232
adapters. They are automatically recognized by Linux systems.

### Software

Amstrad PCW:

- CP/M system disk (for booting, `ED.COM` and `SETSIO.COM`)
- Programming Utilities disk (for `DEVICE.COM` and `HEXCOM.COM`)

Your computer should run Linux:

- `bash`
- `objcopy` (comes with the `binutils` package on Debian distributions)

## Usage

    pcw-send-program.bash binary_file serial_device
    pcw-send-program.bash [-h|--help]

The first command sends `binary_file` over the `serial_device` connected to the
Amstrad PCW.

The second command displays help information.

## Use case

The `KERMPCW.COM` file is a version of Kermit patched for the Amstrad PCW. You
can use it as your first program sent with this script.

Here's how to use this script.

### On the Amstrad PCW

1. Turn on the Amstrad PCW
2. Insert and boot on the **CP/M Plus system disk** in drive A:
3. Type the following commands (except the `A>` prompt)

       A> pip m:=ed.com
       A> setsio 4800 interrupt on

4. Remove the CP/M Plus system disk from drive A:
5. Insert the **Programming utilities disk** in drive A:
6. Type the following commands (except the `A>` prompt)

       A> device con:=sio

    Note: at this point, the Amstrad PCW stops displaying text and stops
    listening to keyboard.
    
### On the Linux system

7. Find the special file on which is installed your serial port. If you use a
USB to RS232 adapter, the special file should look like `/dev/ttyUSB0`
8. Ensure the current user has read/write permissons on this special file. On
Debian systems, the user, group and permissions are generally
`root:dialout crw-rw----`. To change rights, you may use one of theses commands:

       su root
       sudo usermod -a -G dialout $LOGNAME
       chmod o+rw /dev/ttyUSB0.

9. Ensure you have the binary file to transmit.
10. Run the script (except the `$` prompt)

        $ bash pcw-send-program.bash program.com /dev/ttyUSB0

11. **Please, be patient!**
12. At the end of the process, the script will tell you everything is
(hopefully) OK.

### On the Amstrad PCW

13. Once the script has run, control is given back to the Amstrad PCW
14. Your program is available on the m: disk.

## Limits

This script transfers one binary file at a time.

Due to the way this script works, transfer requires several minutes to complete.

This script is meant to be run once to transmit a communication program such as
`Kermit` and then use this program to send back and forth files at higher speed.

## How it works?

This script uses the fact that CP/M is able to redirect its console input and
ouput to the serial port using the `DEVICE.COM` command.

It means that everything normally displayed on the screen is sent over the
serial line and everything received from the serial line feeds the CP/M command
interpreter.

The script then uses the `ED.COM` command to create an Intel HEX file. Intel HEX
files use only colon (:), digits (0-9) and line returns. It is ideal for the
task. The only drawback is that it occupies 3 more times space.

CP/M comes with the `HEXCOM.COM` command which is able to convert the HEX file
back to an executable COM file.

Et voilà !
