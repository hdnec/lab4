#!/bin/bash

if [ "$1" = "--date" -o "$1" = "-d" ]; then
  date +"%Y-%m-%d"
else
  echo "Nieznana opcja: $1"
  exit 1
fi

if [ "$1" = "--logs" ]; then
  for i in $(seq 1 100); do
    echo "Nazwa pliku: log$i.txt" > log$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
    echo "Data: $(date)" >> log$i.txt
  done
  exit 0
fi