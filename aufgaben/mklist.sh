#!/bin/sh
cd "`dirname "$0"`"

echo "% generated with mklist.sh" > ../app-aufgaben.tex
echo "\\chapter{Aufgaben und Fragen}" >> ../app-aufgaben.tex

for f in ./*.tex
do
  echo "\\input{aufgaben/${f##*/}}" >> ../app-aufgaben.tex
done

cat ../app-aufgaben.tex
