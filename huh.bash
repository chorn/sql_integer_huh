#!/usr/bin/env bash

MY="mysql -uroot chorn"

huh_insert() {
  local expression="$*"

  echo -n "INSERT INTO ${__TABLE}_test VALUES (NULL, \"${expression}\", ${expression}"
  for col in {1..20} ; do
    echo -n ", ${expression}"
  done
  echo ");"
}

minus_one_this_one_plus_one() {
  local expression="$*"

  huh_insert "(${expression}) - 1"
  huh_insert "${expression}"
  huh_insert "(${expression}) + 1"
}

base_n_to_m_inserts() {
  local -i n=$1
  local -i m=$2

  minus_one_this_one_plus_one "POWER(${n}, ${m})"
}

wonky_inserts() {
  local -i m=$1

  local a=$(( (10**m) - 1 ))
  local b=$((  10**m      ))
  local c=$(( (10**m) + 1 ))
  local d=$(( (10**m/2) - 1 ))
  local e=$((  10**m/2      ))
  local f=$(( (10**m/2) + 1 ))

  huh_insert "'${a}'"
  huh_insert "'${b}'"
  huh_insert "'${c}'"
  huh_insert "'${d}'"
  huh_insert "'${e}'"
  huh_insert "'${f}'"
}

run_sizetest() {
  export __TABLE=$1

  $MY < "${__TABLE}_test.sql"

  for exponent in {2..16} ; do
    base_n_to_m_inserts 2 $exponent | $MY
    base_n_to_m_inserts 10 $exponent | $MY
    wonky_inserts $exponent  | $MY
  done
}

for sizetest in smallint integer bigint decimal ; do
  run_sizetest $sizetest

done

