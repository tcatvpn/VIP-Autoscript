#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��� =�}~� ���?�������j��	�p `��r��6//{kwg�<lsP �@� � ��( �F$�ɩ�4�z�6��5=OLO)��Az����{SOSSm@ h	�	$�F�L���&�ꞧ�4�#j1�44z�Q���h    A)��G�Pڀ4��=F� 4h �P��h�  $҉
��'��A�C@  �   @ �4�J���4   �       �� ��ɡL&&T�2m��"z���oT�<���d J2A��F^����^j�b:��9����ކ<��£mwT�`��1���fj�)t�/]L܍D�|Є�_ؒWqF6�)*�p�O�I2��Z1ȄU���׎w�K�����i��/|�wf-�ЁS���G����E����Wj��1*�r��t2wWG��̌�����~�A���,i!-��`���P88�+9�6-���\��L�B�� �P��I��N�p��{N]�$ 1��Y�	fAR���D� �!N��4%IV뜯L���վ��[��_ǖ�29(��!�dBE�J5~%_L���['д���	�_3k$��N@}K�ٲ��._�K��R������ȅ��}z��Xcb�]�s���~~��qU��'�D*{�
2/H�L+F0(���%R�����$���m,���Ø��	�&�]��̙�.Bz�M�����_7��XP�v����t��v��lW\G[�[�X��J�����[K�WHj���	�mY�H=�b|p�u��*G��67n����(������p����l|bE�1+c` 5(]CP������M�����`Hp%�xrv�私S�D+�4�I�WZ�h��wF���|&�~���8�o@�J�1�tg�C�T�8ܷM�[�o<)��[��$��`h�Uyr`͌[�W���Ǉ)�m��1�����#r8	;�	rA�YOߡt�H ��r������BQ�aq$Ku����Aу�Ƹ�~E���Q ��΃M9�!���a�k}�Q���)���S�s4V�I����VZs�(Q��i%�׹�JC������Yb� ��Ë.���n=��[�y���c!�N�n�}��)�pZN�L��BDc����Q��� u�,���V#����g.�\ԮT�E؁�[9[��O�M��0��j� kn���۸����x,�;�fdѵ��JEܙJM�*�o��\�`�@����� ���Ǝ]P!��aTrH���N>$�B����_6{�yD�/�V�Db��w����5�9�O��A�I2}�G��TЧ%�U�ݛ;��K�=�[A�	?<xn8�(��0�8cFI-���]�&a�|X�'�`�F�B̻��zI�X�kA�A.��N%s�b����Jj���9��@!jX�6Z�Ԏ\�� [���/T�,;d�6�\P�މu㉓��w8�5�;S����hk�f�qV ��p<�
c�o`� �ܞP	���%��ަ��'�V��s��_�i�3����3��VXR�P��!B�1"�n��H̿}��!���@����@8��
	Q�} �G�qkӝ��3cpX�prx������. 6�V��JgI"������%��Hc�ʹ2:�8܁v�H�] �|�?I��?:%Q�I&4�� ��"�����}��w�g3�*S��Ms���#=T�Oc��E0@�,���6
���:5��	��7�/��*$c��p�t�N(�� ˏ�E�������31׼�v�w�P����E��[5R",��(��&gcZͅ��ʹ��qݙ��M�2ۊ#n�1���-��˧fʻ� ?XHɨEt"�㠂�)��u?R�8D�\`�PaE�H�DA�F�{�a�Xك.�I�&p��@�U9�;\�.+-�|�3l|Jzw9~��J3�>� �[��F���TF͙�7kȑ�Ù��~�W��Վ:/X�O�o����\��#I�n47�7Λ����& ���0i��%�W�����kE����+P�U��h'���{��������c8=�*p$���"�;�E�i�L,����'a�|f�H����s���k�� )旂r��42Y\��(Ka۳F���G�jKV�^�43���#8x��u5p�!z��䔫~�j֍��D�qb_e�N�3%�e!�� �U?�����?u�A� <-�{#�I$�$1�� P%�	nH�kb
�m5mbV�¬�@K+��	ϕ�S(w��O��r�������sNy,���I�:�U>ݜ��䂡![�{��o
�Lꧪ܋/�}-�+�IK �B�DQk�Ԑ2\$���E��];l�Ǎ�;����s'd�)���!T�+o�đ���=V����Cp�~�u��P���Ɔ#�k�/oq9���֠M ���S���,�G�B�W�8Pi�bZ�dv-�U�7�U�B��5�p�lb�4�H��A��Q�3�=컏Q����t�A�� �]�UP ��»�&F�r-���N`��1�Ga�L�<!�sIEz�w~�K�C`��0H�3�`���!bYn)��9�ݼ���)�VH�#����h7� z�6��>+K
ѓI|&J�<���v����ި�hx���$Ĥ Υ͎-����OC �$ 붐y��|a�R�!������- �ak���wt��F��͗.x�&�H
��-�汪Ӄ ���;�F����}��MaժZ��Q�h;5t����LxT�9����f��D�W�� �	��)9$#:DѺD����9���.�s��4-�h��� U`�=�.�d�� fk0�*�s��~Fz��L7X	��GU���ѫ�)����˽�ޥ��`�mc��5�Z��RĎ���3�JLў�/E�M����tɛ�Mt%%�U��J&o����=
q+�@Xi#T�1�U���^��JK�h�6""�-���Z��$��� M�5�4b�)J�	(w�9]��$��� 5"w��$�xW��x �׀�
�`��%��$V$A	�c�Z5_!��$��kYp[~#l@ߋv�����;���3��*��!5�flA3dvz?X�dH��o�JZ�_5Y���LE p�;����u����#���2��
�ݗ���-���4������H��v=7�y&ņ��y}ڭI��v��6o�t~�Cm����/�G&R���ä�Y#YS!y	\���u���C�8� XLECλ^�� ���X��2z^Rr����@'��:���,�xbT2j,���0t쮗�0FG��f��-q��ڶ�b�"<$ъ�)��EcUn�C `���L�ʝ�n`�њ=S	���	�K�/o���BT(� ��(uK�����g����������9.'`�(��ӹ�z��$��%&�_tY*N�u�b:��������U��l47��,��䎈����7v� �ix���I�r��#a-ن���1��n&�s�F �XT�8�n�#�5��É]J/����_C*�;�Jʎ���Hs���L�Si�{�6��l*̻���PW�\o��4a� �+�ÞK������2
��V�E���0U�vts2����e���+�d�����L�Im$z�N3�mU�]\
�λ/�7-���8���&���|�GP�&
btT�:C������c���<9އ����&�HA�	����(�ΐ('�H, RDU��"0A��#`��$ �( ���	0I5�I$,$@HI2!�Ha	���8��$~�Y�;��nZ/'���,		Èف���;x�H�,�\�ā�!��,W9j�PP��C43�[�t[m�\��ˊq�� ���x�b�9D3�`��Z��.)p�FjƠ���Ղ�
�Ԋ�Qe�
e�7��dy��°
YFT�(�
%b#Cx��5��X
�C5�E�� Fk @�i/&۲�0�rgc�4t�h&�Y��qt3�\�.5��QMua�&4Ҭ��졌TCF,���Q@00
���B��]f68�(��.�%5.
�%�
$�"0
�0ѕ�����DD��E+%�ȱ��ܑN$&���@