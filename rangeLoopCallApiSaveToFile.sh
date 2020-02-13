#!/bin/bash
#Test Program

echo [ >> results.json
for i in {1..10}
  do
    curl https://rickandmortyapi.com/api/character/"$i" >> results.json
    if [ "$i" -ne 10 ]
    then      
      echo , >> results.json
    fi
done
echo ] >> results.json
