#!/bin/bash
CWD=$(pwd)

$CWD/scripts/setup_hooks.sh
$CWD/scripts/clean_all.sh
$CWD/scripts/get_all.sh
$CWD/scripts/gen_all.sh