#!/bin/bash

#invoke like
#./test_06_difference_in_2_special_params.sh 1  2 "3  4"
echo "With *:"
for arg in "$*"; do echo "<$arg>"; done
echo
echo "With @:"
for arg in "$@"; do echo "<$arg>"; done
