#!/bin/bash

# $1 represents date of schedule in mmdd format. For example 0310. * wildcard fill in the rest of file name
# $2 represents the time in hh:mm:ss format.
# $3 represents either AM/PM
# $1,$2,$5,$6 in awk command represent time (both number and AM/PM) and name (first and last) respectively.

cat $1* | grep "$2 $3"  | awk -F" " '{print $1, $2, $5, $6}' 
