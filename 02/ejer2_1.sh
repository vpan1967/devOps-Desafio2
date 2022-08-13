#!/bin/bash
mkdir empty
for (( c=1; c<=9; c++ ))
do  
  touch empty/archiv$c
done
chmod a-rwx empty/archiv*
# --Modifica los permisos usando el operador = del chmod
chmod u=rwx,go= empty/archiv1
chmod u=rw,go= empty/archiv2
chmod a=rwx empty/archiv3
chmod u=rwx,g=rw,o=r empty/archiv4
chmod u=rwx,g=r,o= empty/archiv5
chmod u=rx,g=rw,o=r empty/archiv6
chmod u=r,g=,o=x empty/archiv7
chmod u=rw,g=r,o=r empty/archiv8
chmod u=rw,g=rw,o=r empty/archiv9

# --Modificar los permisos de los archivos anteriores utilizando los operadores + y - del chmod
chmod o+r empty/archiv1
chmod u-w empty/archiv2
chmod a-x empty/archiv3
chmod go-r empty/archiv4
chmod g-r,o+wx empty/archiv5
chmod u+w,o-r empty/archiv6
chmod u+w,g+x,o-x,o+w empty/archiv7
chmod u-rw,g-r empty/archiv8
chmod u+rw,g+rw,o+r empty/archiv9

