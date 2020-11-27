#/! usr/bin/env bash


sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' <r0_input.txt> r0_output.txt


awk 'match($0, /(\w+)\*am, (\w+)\*is/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' <r1_input.txt> r1_output.txt



sed -E 's/\* ([a-zA-Z]), ([a-zA-Z])/1. ([a-zA-Z])/2. \1\n2. \2\n/ \3 \n/' <r2_input.txt> r2_output.txt
