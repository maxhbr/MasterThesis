#!/bin/sh
cd "`dirname "$0"`"

echo "% generated with mklist.sh" > ../notes.tex
echo "\\chapter{Notes}" >> ../notes.tex

for f in ./*.tex
do
  echo "\\input{notes/${f##*/}}" >> ../notes.tex
done

cat ../notes.tex
