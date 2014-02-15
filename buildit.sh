#!/bin/sh
CFLAGS="-O2 -march=native -msse2" ./configure --enable-scrypt --enable-opencl
make

if [ -a synminer.exe ]
then
  echo "stripping synminer.exe"
  strip synminer.exe
else
  echo "stripping synminer"
  strip synminer
fi

