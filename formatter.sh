#!/bin/sh

function join_by {
  local IFS="$1";
  shift;
  echo "$*";
}

PROJECT_DIR="$(pwd)"
FILES=$(join_by "," "$@")
WIN_PROJECT_DIR="${PROJECT_DIR/\/c\//C:/}"

mvn spotless:apply -f "$PROJECT_DIR"/pom.xml -Dspotless.include="${FILES//$WIN_PROJECT_DIR/**}"