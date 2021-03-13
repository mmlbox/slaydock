#!/bin/sh

for F in *.mml ; do mgsc-js $F ; done

for F in *.mgs ; do kss2vgm -p120 $F ; done

for F in *.vgm ; do gzip -n --stdout $F > ${F%.vgm}.vgz ; done
