#! /bin/bash
echo Hello sqlsmith docker!
cd /sqlsmith
autoreconf -i
./configure
make
echo Hey! It compiled!
./sqlsmith
