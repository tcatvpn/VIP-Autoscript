#!/bin/shskip=23set -Cumask=`umask`umask 77tmpfile=`tempfile -p gztmp -d /tmp` || exit 1if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then  umask $umask  /bin/chmod 700 $tmpfile  prog="`echo $0 | /bin/sed 's|^.*/||'`"  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &    /tmp/"$prog" ${1+"$@"}; res=$?  else    trap '/bin/rm -f $tmpfile; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &    $tmpfile ${1+"$@"}; res=$?  fielse  echo Cannot decompress $0; exit 1fi; exit $resBZh91AY&SY�� ���~�����������@D@  `��%ԇkR�v(�@��L���zC@i����� `�F�@ R52��M#�I=OBz!����@z��i�OI�	����4 4� 4i��&@ 	Bѩ���Hh��  4� 46� @� �L�F� 2`��  �@Bi�F&��lOT��L��M�='�?T�M=F�2i��2 ��"F���v5rI��;�(�	�ˬ}NBB�ݚ#X��>��P��4V�u�U_焧�Xc�%�����-�1�XU�PZ}��([��bV1	.+�K�L�H��dM`��ғ'��<I�h��6�<���,@B*5C��B%���y4�o@.ˑ�j��&��&��`ݲ=ZT���b{hZ+ί�-�܎+C/�W,���6��ٸ��c{�)�H��ɨ�ê��g���:�����k�<���*�^�_�?߼�S����|��"�_�N�"i����rJ�`L���8����foE ��2�>�[�Մ�>g�_矄�硓O[�2�rJ_��ڨ��XBH�FMd�k�<��!������Ă�؛f`X-JH/�9k��W�_���;�G����	C���p�D�^׭$��#��+�y�JO����m�b�}���s߇:�L4ITg��Z��R]���-H�����0�<T��i0�b��=2[i`*��R���#����U��Co5�Ŋ� �{G���p du^���+�'���E��R�gd�F�%��m-LdA��%M�r�ԭk)#���d�R4�<q�0}����P�7����A8��m��n�Z�g/��ͧ�ez�n��~6�ͥZ�5�kE�h�!�z���������b��L�U�0iϢ`�&d�kJ�R�f������$�_9�&��g��q�7�g�;��r�d�����B0Dn����j��3��٩��i�<9+ �X���[Sa��E(� �j#��>2ԤL4-���De�u�3%�#D��WMGl��J�zJ�m�J�6�&��4��F�2kX����bF�䗴��� �0u�:�?	����'��Hz�z�'���]G���_���2 �-H���_:$α��0�����n较p������g3�Wc��xE�P6*~���5s���s�>����]ږc2�鷦��A%Kth���3�j�L��tD@k"Ԥ;撀y�Q��%VR��J�[ �7[�H&�)�$�+ITG)�4�c>�H�1Ԃ�C��������Z��#i���mH�t�����s'��٠���/P�b�I}�[c �ŭ0�e$h'�����䡳�k=	�Q�0�H��0�,	�"����xf\&��pHC�im��2�qAX��}�ǫ�"(�1`�$��`���돿��Iұ�i)R��Ԯ��*e���ZT��y��ә��F��2q�s:�E���.&�CҘ8�+0GF�ǁ���<'��G|Y��,r��!������y�Ts�5#[�;̠�o��R3" ��@�Mb7�c��I��;��5T*5�2�׈�1�ч�O7���E��C6Qyϋ@U�@P#���a��4�m�2��X�s���i,����k�M�M��B�"�^&)�(��d���p����	���� b��Eb���o%���fוC)��j�a�^EQ@�qI����6c`=@*�K �m �������|�"8�Ppb7��!1$&�oL��/����H�!�@