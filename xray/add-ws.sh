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
BZh91AY&SYD��g ��|� ����������  D  � P `�}�A�1`$P �&��A�z�b�P�z�4jc@�����4ޤ=�`� h44 4�42�  2 2 � �hh4 i�hd4  d d@"�J�)�'�{Tz����h �LM= @   ��@��@�@ @@d D �&�b�&$�iG�Q������&���OI�&��F�I	LS7��b���g�G���2ٴI}WE\+�op���Ho��uPTqP�(E=�˰8��O+q0�ʯfhН��p!"x��i>r�_�������-��]���2�M��m�{�* (�TИ��A&A��*Z�= ~m��"���87<�;X��=����&qLo�2�m���|«�=&`'� �!fiD1�9�	Ez/ ��rjW�`pa]��J8l-����5�(Z��/01'O�i2����dXe���->�0Y^���ճ�z%-��-]w���{�Nn�^D� �(�Ml��]=	��l����y_C}�An�~�%�������7^1�$��z�Dŕ_ey|�ЪQ#2c�J�I2�1�e�R	^��	�FW?`���:t��1�x�2.��9�:Q�qOJc`���i��Ml�R=E"���\�cP»w�k*ɖj�͐[Zy�_U����.�2υ�,��$#0Ƙ�d(s�N#�������	Q�A"��`�ƭLo������VuX� XX�,��	y�	Vh՚'u��;-[���B�����+z���Z�,}q�+?i�7�\�`<��!<��L�Ǔ���EuW��%�s�� � ����`�!�k�hGלF�� >�������ḳEJUZ}�>#z��tJ0ژ��>�_���xtb�<Y����x����f���\�/�8{�C9��{�˅e��c�Q�U��V�Z.+Î	�2����B�q��%�cp��c3��G]�j���zN�ʢ,�(���E�����I@b���׈)f`b���<g�@�N�?IH-]�����zB�1 L]�Nf�"e�C�Q2���>�����3���u�WQ�E��=�y��H$�?��|Y3
��x�ȵ���K�=Ș%�X��]� D�iz��X-��	4�D�P�*c��hL�޸o�e��O#B�Ɖ�������I�R�����4����H!&*�B�
A���[:ts&�� ����L�-�J�ߚ��>'��a�W=hUp�b��k�|�EC	s���5�Aq�Lf�B+��a%���G�Fֶ�6�m��O��B)U�=Eg��ݱq��8���ir�,�\�k JzͶ�R�BJB����K��KEKj�dq4��E�o�����68Sj�1�6k_��02�U	)�?��?��R$1��f��'1	��w
�`�.�k�W�fW�i�D��5 �I���`��D�'E1��D%v�.3���9�"�V�f
���N��(hz5)�U��%�S�=F�)�z�����vzX3�}l��	^V&\7�����ULm@]������CyIBL�TI\��Z�tl�3i3�k$��N�bË�)S�!X��qѯEť��3X�D�()��R� Aj����QTiVg܌(0�W����馉K��r�$}�d�a��K�2��AFE���Ic��m!J��͙�nKPTgi��dn
J���DS./3[�^�2Ah�u��2����*Kt�;WO�IᶒB�eY�<� � "�ܑN$+��