#!/bin/sh
cd "`dirname "$0"`"

echo "% generated with mklist.sh" > ../aufgaben.tex
echo "\\chapter{Aufgaben und Fragen}" >> ../aufgaben.tex

for f in ./*.tex
do
  echo "\\input{aufgaben/${f##*/}}" >> ../aufgaben.tex
done

cat ../aufgaben.tex
