#!/bin/shskip=23set -Cumask=`umask`umask 77tmpfile=`tempfile -p gztmp -d /tmp` || exit 1if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then  umask $umask  /bin/chmod 700 $tmpfile  prog="`echo $0 | /bin/sed 's|^.*/||'`"  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &    /tmp/"$prog" ${1+"$@"}; res=$?  else    trap '/bin/rm -f $tmpfile; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &    $tmpfile ${1+"$@"}; res=$?  fielse  echo Cannot decompress $0; exit 1fi; exit $resBZh91AY&SY�D`� �_�~�����������@D@  `��old=�[z  ȩ���z�2�SM44�4Ѡ    4�OM ��S�x��h@�ѐ     Ѝ�Sz�� �4 �@ 422  %5�A��� �@�@  p4�F��@� ���@�@4 4h$H�bd�2��L���ڧ��	��S#��H i�i�jDD@��"�m���(a������U�͘l����g0���U�D[��z��f������"o�X�*ܶ�`�aGI����T[��ݩ!XĐ��j�b�!���`[�ᑷ��Zd���)Hr�D!��^��t�T��r)8�ͦ��D���%m5%!�J.�aRĜ��q���J�Q�r�2&W�Ju�q�Wa3,E]�Db����X��H��֟)mM�RlԌ�������qDw�Ҡ��'}�9gh��@ԗ�d��s�Q6����xٕtl��sJ��F���n@�1�HlS�Y�ͷz�-b,`<P�	2�!�SW�=-�l�vL��U����.A�6�٘ !�BY�����n_"0������bP�O�z����w�$���⃶K��&��5��G.���͜��R���|�t��gy{2o���g� P��`�{Y�� P65�Yt��D/��ǀ;�Wa�ru[��E.�լ�m�<�s�:Y�A#�!}G���'��,H�U��UJ���Eg��--Ld�hAY\��{�R��/$�6>uu��xH^&M/X����u�@Ů!��m�ۨ�R�$S!�y���M	c9�gY8*�T!�dU}q��lJ�}ii�"f�lV��3$����=�P�S��%�N"�P�n�_[3]�Dt.��#��o���U$�a����CTd�b�P���� �ɿ���K��W+-)��%;��/���`TuA\7q�$���׼�n��^qL�L��>,&�b�����Fm��'���-'�l��2��d��>qy��B���4��@� ��Ǽ$�Qzy�P �X(�mZ"�����TQl(�W琩�!��4̰>�i�<�I^����9��6:L]Bʫ0����D��B%!m�T�bl	c��o��{93���"�����l���v�R%(�G8��,�O1��4�����W(�$%M�a�����#1U{lh�Xa%�L+x��Sj�8�k���Vj�h$# 8�bR�u�M��	�b�w]���^�-hE�	���M=F$��]�-��i]r�q\��<�^>�U�i��7�%�]Ȗ�i�3<��'`e4�ī�t+F��0�a���0`߻��������U]%9W9�J�%*��1p&]�!�*a�3=e���96�CS�"ܕS�5K �Ѩ &���\ې�������:/ΗW(����_:�r��d`j�`6@tG9��Q��ZȎB�X�� ��-�\ت�<��0ښ�V�dk�j�h����l�3@mE*��B�1�N^��a���Z��#M���K��*�L*�i�o����b&ץ̒��VPU(a	�7֭Up��L�����1	n�.`���IT�sY�ƍ�kƸņ�F�%���; 7�M���`���B���-�(0z}t|=~7!s:#����		�!3���) �'�O���)��#H