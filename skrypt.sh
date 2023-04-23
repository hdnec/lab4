#!/bin/bash

if [ "$1" = "--date" -o "$1" = "-d" ]; then
  date +"%Y-%m-%d"
else
  echo "Nieznana opcja: $1"
  exit 1
fi