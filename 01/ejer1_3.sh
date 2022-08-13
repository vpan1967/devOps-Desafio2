#!/bin/bash
<< 'Comment'
    Este es un comentario
    de varias lineas en Bash Script
    linea 1
    linea 2
    .......
    linea n
    HereDoc body is
    a multiline comment
Comment

directorio="foo"
if [ ! -d $directorio ]
then
    mkdir foo
    mkdir foo/dummy
    mkdir foo/empty 
fi

texto=$1
if [[ ! $texto == "" ]]
then
    echo $texto > foo/dummy/file1.txt
else
    echo "Que me gusta bash!!!!" > foo/dummy/file1.txt
fi

touch foo/dummy/file2.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/
