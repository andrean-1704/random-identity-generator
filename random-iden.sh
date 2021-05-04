#!/bin/bash
mkdir dynamic
shuf -n 2 data/namas | tr '\n' ' ' > dynamic/junk
sed -e 's/ *$//g' dynamic/junk > dynamic/junk2
sed 's/\ .*//' dynamic/junk2 > dynamic/junk3
shuf -i 1000-9999 -n 1 > dynamic/ranam
echo ---; printf 'name : '; cat dynamic/junk2
printf '\nid   : ';cat dynamic/junk3|tr [:upper:] [:lower:];cat dynamic/ranam
printf 'dob  : ';python3 data/random-date.py
printf 'pass : ';shuf -n 1 data/pass|tr [:upper:] [:lower:]|tr -d \\n;shuf -i 1000-9999 -n 1;echo ---
rm -r dynamic
