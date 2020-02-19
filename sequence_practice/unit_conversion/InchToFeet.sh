#!/bin/bash -x
inch=42
ft=`echo "scale=2; $inch/12" | bc`
echo "42 Inch in feet is $ft"
