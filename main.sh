#!/bin/bash

function generate_password() {
  local length=$1
  local charset=({A..Z} {a..z} {0..9})
  local password=""

  for ((i=0; i<length; i++)); do
    local random_index=$((RANDOM%${#charset[@]}))
    password+=${charset[$random_index]}
  done

  echo "$password"
}

echo $(generate_password 10)
