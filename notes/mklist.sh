#!/bin/sh
cd "`dirname "$0"`"

echo "% generated with mklist.sh" > ../app-notes.tex
echo "\\chapter{Notes}" >> ../app-notes.tex

for f in ./*.tex
do
  echo "\\input{notes/${f##*/}}" >> ../app-notes.tex
done

cat ../app-notes.tex
