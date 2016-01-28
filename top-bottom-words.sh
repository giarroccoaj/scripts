#!/usr/bin/env bash
#cat top-words-1.sh curl -s http://www.gutenberg.org/cache/epub/76/pg76.txt | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | head -n 10

NUM_LINES="$1"
FILE="$2"

echo The top $NUM_LINES words are as follows...
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | head -n $NUM_LINES

echo The bottom $NUM_LINES words are as follows...
cat $FILE | tr '[:upper:]' '[:lower:]' | grep -oE '\w+' | sort | uniq -c | sort -nr | tail -n $NUM_LINES
