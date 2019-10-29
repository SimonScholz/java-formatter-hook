#!/bin/sh

function join_by {
  local IFS="$1";
  shift;
  echo "$*";
}

PROJECT_DIR="$(pwd)"
FILES=$(join_by "," "$@")

mvn spotless:apply -f $PROJECT_DIR/pom.xml -Dspotless.include=${FILES//$PROJECT_DIR/}