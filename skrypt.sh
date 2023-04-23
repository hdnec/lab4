#!/bin/bash

function display_help() {
  echo "Użycie: skrypt.sh [OPCJA]"
  echo "Opcje:"
  echo "  -d, --date        Wyświetla dzisiejszą datę"
  echo "  -l, --logs [NUM]  Tworzy [NUM] plików logx.txt z informacją o nazwie pliku, nazwie skryptu i dacie (domyślnie 100 plików)"
  echo "  -h, --help        Wyświetla pomoc"
  echo "  -e, --error [NUM] Tworzy [NUM] plików errorx/errorx.txt z informacją o nazwie pliku, nazwie skryptu i dacie (domyślnie 100 plików)"
  echo "  --init            Klonuje całe repozytorium do katalogu w którym został uruchomiony oraz ustawia ścieżkę w zmiennej środowiskowej PATH"
}
function create_logs() {
  num=${1:-100} 
  for i in $(seq 1 $num); do
    echo "Nazwa pliku: log$i.txt" > log$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> log$i.txt
    echo "Data: $(date +%Y-%m-%d)" >> log$i.txt
  done
}

function create_errors() {
  num=${1:-100} 
  for i in $(seq 1 $num); do
    mkdir -p error$i
    echo "Nazwa pliku: error$i.txt" > error$i/error$i.txt
    echo "Nazwa skryptu: skrypt.sh" >> error$i/error$i.txt
    echo "Data: $(date +%Y-%m-%d)" >> error$i/error$i.txt
  done
}

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -d|--date)
      echo $(date +%Y-%m-%d)
      exit 0
      ;;
    -l|--logs)
      num="$2"
      create_logs "$num"
      exit 0
      ;;
    -e|--error)
      num="$2"
      create_errors "$num"
      exit 0
      ;;
    -h|--help)
      display_help
      exit 0
      ;;
    --init)
      git clone https://github.com/username/repo.git
      export PATH=$PATH:$PWD/repo
      exit 0
      ;;
    *)
      echo "Nieznana opcja: $key"
      display_help
      exit 1
      ;;
  esac
  shift
done

git tag v1.0
git push --tags