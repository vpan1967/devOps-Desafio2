#!/bin/bash
buscar=$var
curl "https://es.wikipedia.org/wiki/DevOps" -s > wikifile.txt
grep -i $buscar wikifile.txt | wc -l