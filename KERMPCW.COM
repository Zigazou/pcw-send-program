  �%Â��0CPSMIT.ASM (16) 01-Dec-86$!  9"|@1�@i5�1�3<2�@* P|��p[�|��y*P��|��y�GP:�P2'C�:�qP�Â7�1�7:7�1�71�@�P�2*)2+)2,):�@�@2�5�R5:�G�0§> 2�5:�G2�5z5�G)�!���0���5�qPÂBREAK$BYE$"CONNECT$�"	DIRECTORY$�%ERASE$^'EXIT$1FINISH$!GET$�HELP$�LOG$�LOGOUT$nPAUSE$�RECEIVE$SEND$�SET$ySHOW$#STATUS$/STRING$�TAKE$+TRANSMIT$P!VERSION$USER$�'
BREAK to send a break to the host
BYE to host (LOGOUT) and exit to CP/M
CONNECT to host on selected port
ERASE a CP/M file
EXIT to CP/M
FINISH running Kermit on the host
GET a file from the host
HELP by giving this message
DIRECTORY of current used Micro-disk
LOG the terminal sessions to a file
LOGOUT the host
PAUSE to wait for a little time
RECEIVE file from host
SEND file to host
SET a parameter
SHOW the parameters
STRING to send a specified string to the host
STATUS of Kermit
TAKE commands from a file
TRANSMIT file to host (in connect state)
VERSION of Kermit running$
USER to set a different user number$��0>B�VPÂ�8Â��0�zÂ�\P�4��0�JP*|@��>ͩ)Â*$C"C�B>ͩ)Â��0Â                                                                ��0��qPÂ>\ ͩ)����0!\ �@ �nP>2�@Â>ͩ)Â*$C�*!C|�g"$C��3:�@�����3�*$C�*!C|�g{�_z����Â                 �@!�@�nP�6>�@ͩ)ÂA�3�2�@2A�@�3<ʂ�\�@�3!  "�@>2�@ͣ3Âr6�qP��2Â�!���0��	BAUD-RATE$�BLOCK-CHECK-TYPE$�	BUFFER-SIZE$
DEBUG$�DEFAULT-DISK$�
DIRECTORY-FILE-SIZE$�ESCAPE$�	FILE-MODE$FLOW-CONTROL$�IBM$�
LOCAL-ECHO$�LOGGING$�PARITY$ePORT$�PRINTER$�RECEIVE$KSEND$�
TACTRAP$�TIMER$�VT52-EMULATION$yWARNING$�
BAUD-RATE
BLOCK-CHECK-TYPE for error detection
BUFFER-SIZE for multi-sector buffering
DEBUG message control
DEFAULT-DISK to receive data
DIRECTORY-FILE-SIZE when displaying directories
ESCAPE character during CONNECT
FILE-MODE for outgoing files
FLOW-CONTROL to set XON/XOFF flow control
IBM mode: parity and turn around handling
LOCAL-ECHO (half-duplex)
LOGGING of terminal sessions
PARITY for communication line
PORT to communicate on
PRINTER copy control
RECEIVE parameters
SEND parameters
TAC interface support
TIMER control
VT52-EMULATION
WARNING for filename conflicts$�	!;
��2�PÂ1-CHARACTER-CHECKSUM$112-CHARACTER-CHECKSUM$223-CHARACTER-CRC-CCITT$33
1-CHARACTER-CHECKSUM
2-CHARACTER-CHECKSUM
3-CHARACTER-CRC-CCITT$>ͩ)Â*$C|�
:'C���
}2�PÂ�7�qPÂ\ >ͩ)ñ
:\ �»
:�@2�@�3:�@=_�3Â�
!��0��PAD-CHAR$EPADDING$?START-OF-PACKET$+
PAD-CHAR
PADDING
START-OF-PACKET$��0Q;�qP�32�@Â��0Â��0ÂV!��0��PAD-CHAR$EPADDING$?START-OF-PACKET$���0Q;�qP�32�@Â��2�@Â��0;�qP�32�PÂ��2�PÂ��2�PÂ��2�PÂ��2�@Â��2�PÂ��2�?Â��2�?Â��27FÂ��2�P��>�> 2�Px2�P2�@Â+!J��2�PÂASCII$BINARY$DEFAULT$  
ASCII    BINARY  DEFAULT$t!���2�PÂEVEN$  MARK$NONE$ODD$		SPACE$
EVEN     MARK    NONE    ODD     SPACE$�!
��������';�qP�32�P:�P2�PÂ	CHARACTER$OFF$  ON$
ON to enable TAC trap
OFF to disable TAC trap
CHARACTER to enable TAC trap and specify intercept character$:�P������2�PÂ*vP|����*xP��0���0�"�P��_PÂ*zP|����*|P��0���0�"�P�bPÂOFF$  ON$
OFF      ON$�!���02�G��0:�G�V#F#"�G#��N��##��!7ɷ*�G�
?Not found$��0�,P�;Â��0�,P�;Â:C��Hr<�qP͔:�P��Ġͱ����������D�U*zP|��f*vP|�ĆͿ����P́�i������<�qP:�P×�<�qP:�P�����<�qP:�P�<��qP�<��qP�<�qP�<�qP:7F×=�qP:�P×=�qP:�P×*=�qP:�P×9=�qP:�@��F=�qP>�qP:�P>��qP>��qP>��qP!>�	�qP%>�qPQ=�qP:�@�@_�3m=�qP:�@�@_�3*>�qP:�P!V>��ʻ*zP��҃!V>û=>�qP:�P!V>��ʻ*vPV#F#"�G#¢N�ʸ##!V>û*�G��qP�=�qP:�P_�3�=�qP�=�qPͷ0�1�=�qP!  :�Po��0�=�qP!  :'Co��0�1n>�qP:�@×��0�1!@^#V#z��,��qP�1��*P��qP�1*P��qPÂ�6!h%�'-)]0  t>�qP�<:�P��qP_�3�1�<�qP:�?×�<�qP:�?× ��3o& ��>�qP���0��<��qP�<�qP>�Bͩ)Â28F�ʂ�P�B��w0_�P�:8F=28F¼�PÂ�8�qPÂCPSPKT.ASM (7) 11-Aug-86$YF>ͩ)�����2�G�6$͍ �5PYF�qP�"> 2�G͍ �G>ͩ)��2&H:�G��K>12IF�2�G>R�����2KF!  "MF"OF2LF2QF�;P!  ��0>R2SF�8P*MF��0:SF�D��l�F�7�l�R§��:SF�F�lx:�� �l�C���7:KF�ʽ�2KF�8�� Â�A���7�� Â:QF����5̈́ Ý <2QF>12IFͶæ �S�,:QF2RF�2QF:�G�� :�G!YF̓!YF�B2�G>Y��Ý :JF2IF>F2SF��E£ �_ Ý :QF��H�5̈́ Ý <2QFͶæ �S:RF��h�5̈́ Ý <2RF:LF=�?G:�G�£ ͹ �2QF!YF�B2�G>Y��Ý ��Z­:RF����5̈́ Ý �!��F���� £ �� ͨÝ :QF2RF�� >D2SF:KF�Zȯ2KF��B���� £ �2�G>Y��Ý >C2SF��E �_ Ý :QF��6̈́ Ý <2QFͶæ �D�q�� �=:RF��96̈́ Ý �!��� :QF2RF:�G�Ý �2QF2�GO:KF��hO>2�Gy2YF>Y��Ý ��F:RF����5̈́ Ý �!��Z���� £ �� :�G�©:YF�Dʳ��2���2KF:QF2RF�� >F2SF�/6̈́ Ý �E �_ Ý >\ ͩ)Â�G>ͩ)��2&H�2*)2+)2,)2*C!+C"(C��'�r6�qPÂ͍ �2LF2QF2�@!  "MF"OF�;P!  ��0>12IF>S2SF�8P*MF��0:SF�D�Q�A�:�F�\�N�:�Z�g�8�:�Sͺ:SF�F�:m:�� �:�B���:�C£�7:KF�ʝ�8�� Â�A±�7�� Â�7�� Â:QF���<6̈́ Ý <2QF>12IF:�P2JF!YF�B2�G:MF2�G>S��Ý Ͷ�'1�Y�%�� ��� :�G!YF̓:QF2RF�2QF:JF2IF>F2SF�(1��N�C͹ :LF<�?G:�G���2QF>F2SF��E �_ Ý :QF��_<6̈́ Ý <2QF�2KF!YF"BF:&H��*!] "@F  x�>.*BFw#"BFx��*@F~�#"@F�!�~*BFw#"BF�~y2�G*BF>$w�5PYF�qP:LF2�G>F��Ý Ͷ�'1�Y��� ��� :QF2RF�2QF͚��2HF>D2SF��� >Z2SF��N�͹ :LF<�?G:�G�����E �_ Ý �!�GOG~#x��0�"BFñ:QF��R<6̈́ Ý <2QF!YF"BF!G"DF*DF~#"DFO:�@�y:�P�yʖ:�@�y�ʓ�� >�2�@y�*BFw#"BF:HF��d:HF2�G:LF2�G>D��Ý Ͷ�'1�Y��� �:�G�� :QF2RF�2QF:�G���:YF�Z��2KF�X��2KF:KF��>Z2SF�͚�2HF��� >Z2SF��N�-͹ :LF<�?G:�G����E �_ Ý :QF��I<6̈́ Ý <2QF:LF2�G�2�G:KF��h>D2YF>2�G>Z��Ý Ͷ�'1�Yµ�� ��� :QF2RF�2QF\ �3:KF�Zʯ��'گ�(1�2KF>F2SF�>B2SF��N��͹ :LF<�?G:�G����E �_ Ý :QF���<6̈́ Ý <2QF:LF2�G�2�G>B��Ý Ͷ�'1�Y� �� ��� :QF2RF�2QF>C2SF��N�7͹ :LF<�?G:�G����E �_ Ý :�P� w#:�P� w#:�P� w#:�P�@�w#:�P� w#:�Pw#6Y:�P��z:�@w#:�Pw#>�2�G>2�P>#2�P>&2�@>12JF~� 2�P:�G��##~� 2�P:�G��#~�@�2�P:�G��#~� 2�P:�G��#~2�P:�G��#> 2�@~�N�	� �	�Y�:�P��	>�2�@�	2�@>�2�@:�G��#~G:�P��2JF�2�G!YF"<F:�PG :�@��5:�@O!�G5�"1!:F5�I�p2Ó*<F~#"<F ��e�:�G=2�G~#"<F�~#"<F!�G5W怳_z��ʇ�ʇz�@��*>Fw#">F�5/6̈́ �:�PO:IF�1G:�P��2�G!G"DF :�G=��x�"12�G::F=��2:F���G1����x��"1å*>F~#">FW�_�:�@��:�G���=2�G*DF:�@w#"DF z�W� �C��C:�@��-:�@��2z�!�G5*DFq#"DFzÉ��r:�P��a��p*>F::FWz�i�2:Fx�"1~#��\>2�G!�G5*DFq#"DF:�G�@�*DF�w#"DFõ*>F+">F!:F4x�"1>��!YF:&H�ʵ!�G"BF!] "@F�2�G2�G2\  p#<���6 *BF~�a���_#�.��"BF!e "@F:�G2�G>	2�G�+��R"BF*@Fw#"@F:�G<2�G���2�G*BF~#"BF��R�.�*BF~�a�6�_��R#"BF*@Fw#"@F:�G<2�G��+*BF6$�5PYF�qP:�P��\ �3����7̈́ :�G�:�G2�G P<�	�=_!\ 6&��!\ ~�w#¡\ �3������x���{���Ô{�	��:�G_�Ô�6�qP�G!]  ~#� ����x��>.�!e ��>$G�qP�,2��"1/6̈́ ���0�2QF>12IF:QF��>�6�qPÂ<2QF�2�G>2�G!YF6F>G���5Ͷ�-�Yʂ�E�-�j Â��0�zÂÂ�2QF>12IF:QF����6�qP�<2QF�2�G>2�G!YF6L>G��ËͶÃ�Y�"1�E�j �2�G!UF:�@w#:IF�1G:�G�#�w#  O:�G� w#�O> �G:�Gw#�O> �G:�G��=2�G~#�O> �G��:IF�2�<�%y����?� w#�S6 �!VF���KBz�� w#x�Gy��� w#y�?� w#:�P��g�6 �DP!VF� !�:�Pw#�w�P:�P2�G:�G=���2�G:�P�w0_�P�w!UF~�ʰ�w0_�P:�P�¬�w0_�P#Ò�P�"1���'1�tö!�@�¼�t�'1!�@���2VFO:IF�1Gy�#�2�G �t�'1!�@���2�G2WF�O> �G:�G� 2�G�t�'1!�@���2�G2XF�O> �G:�G2�G!YF"BF:�G��X2�G�t�'1!�@���*BFw#"BF�O> �G�/�t�'1!�@���� 2�G:IF�2ʷ҉y����?G:�G���͹ �*BF6 !VF��KBz�W:�G��t�'1!�@���� 2�Gx�Gy��G:�G��t�'1!�@���� Gy�?�*BF6 :�G�"1!�F"FF́�'1!�@����́�'1!�@��!�F"FF*FFw#"FFG���:�P��!�F:XF���:�P��Q:SF�S�Q́�Q��F*FF+6 �P:�P��k#�AP!�F� !!�F"FF�"1*FF~#"FF��"1���*~P"�@�P�P�ʤG:�P�xʟ����"1�P�P����������������@2KF���:�@�ʉ*�@+"�@|�͹ ����,PÂ��  ~�� �_�O !? 		�{�O! 	~�#V�_#~�W�#�����  �!�1B�Rc�s���
���ƍ���  �#�2$F�W6e�tH���Z�Ӿl���~����2P>A2SF�p �5�qP:�GO !YF	>$wYF�qP���2P��qP�i5�eP�P�P�P�>A2SF�͹ :LF2�G�2�G>N��Ý ��;P*OF#"OF��0�����:̈́ ������>P��qP�/P�:LFG:�G��<�?2LF*MF#"MFɯ2QF2�G>Y��Ý �<2RF:LF=�?G:�G�£ ͹ �� �~���_�P�#� !�O:TF�y��CPSTT.ASM  (8)  19-Jun-86$>\ ͩ)Â��0�(1���o!r6�qPÂ9�qPͷ0�9�qPͷ0:�qP>2C�2Cͳ"�3�ʐ!:�@��f"�O2�?�?*>F::FG��!�G1��!*>F::FG~#�ʲ!���!���!�
��!:�?���!ò!2�?ò!2�@">Fx2:Fy2;F:;F2�?!�?"q@ͳ":C��":�?=�N"2�?�P*q@~#"q@�w0_�P:�P��:"�w0_�P:�P��"{�_�P�P�"�2�Gͳ"�#$�o":�G�ʐ!�R"�u",:È"�u"Â\ �3�2C���08�qPͷ0<8�qPͷ0Q8�qP�MP:�@��2#ͳ"�#$Âç"�P�P���"2�@�P��2�?ʳ"�ʳ"��+#��,#_:�P���":C���"ͪ#ó"{���">2Có"�YP�ʳ":�@���Y#�P:�P��P�P!�@4~�e��"6 :�?ɯ2Có"!�@\  �nP��1×#!�@>��w�:���qP�:�qP!:F5�m#��a2�v#�:�@��*>Fs#">F�ͳ4�p2͗#��4��7�qP��2×#!�@~�w�g7�qP\ �3�2�@����#{�Y»#>2C��Z��#�A��#�L��#�A*tP_ ��P�qP�2C�>�w0_�P>/�w0_�P>K�w0_�P��#��${�29F>2Cɯ2C{�O:9FG�P�hP��P��"1_2�G:�P��W$�P{�w0_��P��P:�P��"1{�_�P�"1�P��W$G��k$�_�C�|$g8�qP�PP:�@���#��S$�;�1�"1�ʔ$�R$:C�ʟ$���!x�?��$:C�ʲ$x;�qP:�@��$�;�qP�;�qP�SP:<�qPͷ0L<�qP�W$x�0��$��w0_�P�P�P�"1:�P��	%x�w0_�P�P�P�"1x�_�P�%:�P�2�P�"1:�@��L%x�_�R�9%>�2�@�:�qP�"1�Q�L%>�2�@�:�qP�"1x��VP�]%��P�"1��_�D�k$�"1CPSCPM.ASM (5)  20-Jun-86$\ >ͩ)Ð%è%:\ � %�2\ !] 6?#¡%�R5:\ �µ%:�@�@2�8:�G�0��%> 2�8:�G2�8�1�8�qP>2�P:7F���%:�P<2�P�2*C2*)2+)2,)!+C"(C�D'�2*C��'�&Ó&:�@��$&�3��$&�3Ó&!] �e&>.�X&�e&��&!�P5��H&��q&�&�V&>:�X&�V&�V&> ���_�3����~��X&#�e&�����1���6:7F��4��1:�@=_�3Â�2*)2+):\ �ʨ&=_�3�kP��8�qP:\ �¿&�3<�@2�8�8�qP���0�8�qPÃ&:7F��#\ �3:}   o���& ��:~ 2~ :} 2} ��&o:~ g�	:�P�O	/�o���	�+'�S&�7'����	�7'�V&�V&���0>k�X&��3##~2�P#~2�P##^#V�"�P�>\ ͩ)Â\ �3<�~'r6�qPÂ\ �3�8�qPÂ>ͩ)Â>ͩ)Â*$C�!����'�}2�@] �3�R5:�G�0��'> 2�52�8:�G2�52�8Â�7�qPÂCPSWLD.ASM (4) 20-Jun-86$�����(!+C"(C:*C��2(*(C\  �nP�2h 2} *(C "(C:*C=2*C���(:,)���(!+C"(C�2*C� �3�2h :*)��p(2+)!\ ) �nP\ �3Í(=2+)!)\  �nP\ �3�3�:+)�ʝ(=2+)�È(���(�):)2\ :*)<2*)> 2h 2} *(C�!\  �nP*(C "(C:*C<2*C�@��'\ !) �nPÈ(����2,):*C���'�2,)2+)2*)7��(�����O !� 	\  �nP�               CPSCMD.ASM (6)  18-Jun-86$��"�?!  9"�?�"�?�!�?"q@"s@�2�?2�?>�2�?�1�N0*�?�!�?"s@>�2�?*�?�*�?�!�?"q@"s@�2�?2�?>�2�?�1�N0*�?�2�?͔/��_+�ʺ+��
-��
-��-���)���*�>�qPɯ2y@2{@2z@�"�? �;/��w*���*�3�2�?*q@+"q@"s@!�?5��)�?�%*��,Px*�?��"1�\�7*:y@��7*2y@��)!�?6 _:y@�{�w*�\�P*:{@�}*�0��*�� _:{@����2{@:z@<2z@�:{@�w*��)͈*��)͈*>\2y@��)*�?w#"�?�2z@2{@2y@�j?�qPÂ                                !  "$C�;/��6+��� ��*�"1      �?��*���*Æ)    �"1*$C}��?�+�?�qP�1�N0*s@6$*q@+"q@�?�qP�2�?�s)>            ��0�V+�
�V+?*$C��))) _"$C��*S?�qP�"1�;/����+�3�2�?*q@+"q@"s@!�?5�_+�?²+�?�qP�1�N0*s@>$w*q@+"q@�?�qP�2�?�s)��,P�"1"�?�"�?F#"u@*s@"w@x��*u@^#{����,�;/��,��?�,�2�?!�?5*�?��qP�1�N0*s@>$w*q@+"q@�?�qP�s)�,�2�?�����,�B,�3*q@+"q@"s@!�?5�����+*q@+���~�$�^,#�w#�:�?<2�?�I,:�?<2�?�> w#"q@"s@����qP �3���Ö,����,Ô,�>�qPÆ)�� #^#V{�"1�a��,�{�,�_V#���+ {��,� "u@*w@"s@��+�K{�� F#�*u@~�O���,�*w@�"1�F#�~#�a�-�{�-�_����,> 2p@�"l@ 6 #"n@�6 #<��-6 �;/��2.��?�Q-:p@��/*s@#"s@:q@��L-�2�?>?��.��%.�2�?*q@+"q@"s@!�?5{2�G�	�r-=*n@��-6?#<�u-*l@��3���.!�G�/!�G�/*l@��3��ʯ-!�G�/�G!�G:�G�	��-= ���-#��-y���-���-:�G�	��->.�,/F#���-� ��-�,/��-y2�G>$�,/*s@�	�3*q@+"q@!�?5:�G��s)�3�s){���.���.�"1�.�S.{���.�
��.	 *l@	"n@	�%-�:�p.{���.*n@+~�@"n@+w �%-�* .:p@� �/{���.�.Í.*n@>?w#"n@{���.�%-�!��.g:�P�|��.�%��.�(��.�)��.�,��.�/��.�:��.�@��.�[��.�^��.�_��.�|��.�a��.�{��.�_*n@w#"n@�%-:�?��'1 ?	�3�#?�/�� �<_w#�"/���*q@w#"q@!�?4����:�?�̔/*s@~#"s@� �V/�	�i/:�?��=/>�2�?> ��Ñ/��2�?����ʑ/�?ʈ/�ʈ/�
ʈ/���*s@+"s@�������:�?��J0!�?4�3*q@w#"q@�ʹ/���/�#P�N0!�?"q@!�?6 �s)���/���/�)P:�?==���/�3ù/2�?�&P*q@++"q@�s)�?�"0��"0��0�
�0��*0�,P:�?�ʆ)>�2�?�J0:�?�}��/�3:�?=2�?*q@+"q@Þ/�����3*�?��qP�CPSUTL.ASM (21) 16-Sep-86$��!�PN !�0	�Ö0à0Ó0å0ï0ô0��0��ô0��ô0��0��ô0�ô0���:�P� ��0��8�qP��@_�3�>ͩ)��0��5�qPÂ>ͩ)���>0�'5����	��0��|���0�}�:�952�G_:C���3�5�qP	�3�###�ɯ2:F2)H2�@2*H2h 2j 2| \ �3�:�@�����:)H��r1*'H">F� 	"'H=2)H>2:F����"1:*H�ʄ12�@�2:F����*�P"'H">F��3\ �32*H�·1!)H4:�P�ʽ1*>F� Ê1��2�O1��2:)H�V1�2h 2j 2| \ �3���>2#\ �3*} |��I2+"} *�P��3!\ �3���2*�P� >��2#�2">F"'H{2:F�2)H��2�"1\ �3�2h 2j 2| \ �3���*�P">F� "'H{2:F�2)H�"1�!)H4:�P�25���!)H4:�P�2͚2Ø2*'H">F� "'H>2:F��"1��*�P"'H">F*>F�!� ">F�3\ �3���2!)H5£2��2�"1::F����2*>F=��26#��2�p2�'1:)H���2͚2�'1\ �3�"1� �3�S4��3�:�@��*3y��.3��33�
�=3��`3�� ��u3�{<�*3��u3���u3��^3�
�?3�& o& �w�4��?3����A*�@~���>����3��A*�@~*�@#"�@��3�}�3ͣ3����
�u3����3>����A�3�@�3���3!  "�@��2���ɯ2�@�@�3��2���* C#" C|���3*"C#""C����
�4��4��4����_� �����{2C�<4��4�S4�4���4xͨ4G2�A!�A͟4:Cw�_�P�:�AO:�AGx��P4>����R4y������:&C�ʖ4͛4�ʖ4!�A~#�ʖ4+ͨ42�A##͟4N:�B�4��<4��ʖ4���4�y�74������ P���o> �g���<G>��x��������:�?���4>2�B�w0_�P�4�qP�����
[XOFF sent to host]
$����:�?��5�2�B>�w0_�P5�qP�����
[XON sent to host]
$���!�G
w#�/5���������G!�G	w+�E5�����>�2C ��3o& ��0�2C�Kermit-80 v4.08 $Kermit-80  nnx:>$
$
?Unrecognized command$
?Not confirmed$?Unable to receive initiate
$?Unable to receive file name
$?Unable to receive end of file
$?Unable to receive data
$?Disk full
$?Unable to receive an acknowledgement from the host
$
?Unable to find file
$?Unable to rename file$
?Disk full$
?Unable to tell host that the session is finished$
?Unable to tell host to logout$
?Kermit has not been configured for a target system$
?Consistency check on configuration failed$
?Error writing to log file
$
?Invalid user number$
?Invalid Pause parameter$
?Invalid BUFFER-SIZE parameter$Completed$Failed$%Renaming file to $
[Closing the log file]$
[Connected to remote host.  Type $C to return;
 type $? for command list]
$
[Connection closed, back at micro]$Control-$ (Not implemented)
$Interrupted$		    Directory for drive nnx:
$
		Drive $  has $K bytes free
$
File(s) erased$

[Transmitting file to host:
 1. Type any character to send a line.
 2. Type RETURN to terminate the line and to get the next line (go back to 1.)
    (You may send other characters before RETURN.),
   or type $R to send the same line again,
   or type $C to abort transmission.]
$
[Transmission done. Connected normally to remote host,
 type $Sending...$Receiving...$Warning: eighth bit cannot be sent$
For help, type ? at any point in a command$
[Logging suspended]
$
[Logging resumed]
$
Type the new escape character:  $
Type the new TAC intercept character:  $
Give the start-of-packet character: $
R Send the same line again$
Q  Suspend logging
R  Resume logging$
?  This message
C  Close the connection
0  (zero) Transmit a NULL
P  Toggle printer on/off
S  Status of the connection$
Typing another $ will send it to the host

Command>$
Transmitting a file$
Local echo$ on$ off$
Flow control$
Case sensetivity$
VT52 emulation$
File Mode$ default$ ASCII$ binary$
Display file size on DIR$
IBM flag$
File warning$
Printer copy$
Logging is$ suspended$
SEND start-of-pkt char  ^$
RECEIVE start-of-pkt char  ^$
Escape char: $
Multi-sector buffering at $ of a maximum of $
Transmit protocol char: $
Block check type: $-character$
Parity: $none$mark$space$odd$even$
Port in use is: $
Current baud rate is: $indeterminate (not SET)$Timer$
Current TACTrap Status/Intercept Character:  $
Current user number:  $               $
?Program error:  Invalid COMND call$
?Ambiguous$
?Illegal CP/M file specification$
?Wild-cards not allowed in file specification$
?Invalid user number$
?Invalid \ parameter$ Confirm with carriage return$ Enter a number$ Confirm with carriage return or enter more$                                                                                                                                                                                                                                             &   KERMIT  LOG  KERMIT  INI                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 $                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      �GP>�2&C>1�4�4�4�4                                                                                                                                                                                                                                          �  �P�P��S�"T�0T�RT��S��S��SÏT��Q�U�U��T�U��T��TúTîTôT��T��T��T��P��Q��Q�2R�3R�PRÜRÞRßRÛSÜSÖT��S�$U�U�U�R-S       ����      ^    ##1 @�      CPXSYS.ASM (35) 01-Dec-86 $CPXPCW.ASM (2) 11-Feb-87$*U�U�U�U�U* W "�Q*  "�Q"�Q"�Q"�Q"�Q* * "�Q* 3 "�Q��Q� ���6Q�Q�U � ��Q� x��NQ��SQy��SQ  ��"�P}2�Q��Q� 2�Q��Q� x�ʆQ��tQy���Q��Q� ��<���<��Q� !�e"�P>@2�P�*** NO SIO OPTION FITTED TO THIS MACHINE ***
$�  �  �  �  �  �  �  �    ��Q� :�Q��Q� ��Q�U�(Use boxed minus key next to space bar to generate a Control-\)
$�:R�U�
B  Transmit a BREAK$�_�B�ZR�U>������ZR>��:�Q����>͋R>��:�Q��
���(FRR=R�{����|�©R!��Q� �110$1200$1200/75$  134.5$150$1800$		19200$2400$

300$3600$4800$50$600$7200$75$9600$
   50  75    110    134.5  150    300    600   1200
1200/75 1800   2400   3600   4800   7200   9600  19200$���U�U��U[��S�U�U:U�U:�P��rU�U�:\ ���S=��S� _.� �!� +~w��S��S^#V�����Q����Q{�	�TK��Q��Q� }����	��=� ��Q�jT��T�`T����"T{����jT*^T|��+"^T*ZTN�|�g�U"ZTy��0T��RT��U�U  ����jT������Q����Q*\Tw�|�g�U"\T*^T#"^T�jT�K��Q����U�U�|�_���S�}�_��SÖTÖT͖T�U�U͖T��T͖T��T	͖T��T͖T��T͖T�U�U�T�U $ ��S��S�U�U�U�U'U	� �###����
$configured for $]

Number of packets:
Number of retries:
File name:$


RPack:

SPack:$Amstrad PCW with SIO option$HJ
                $HJ$K$Y$A$ B$ C$ D$ E$ $   $   H$ I$ J$ K$             