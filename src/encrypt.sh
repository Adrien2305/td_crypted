#!/bin/bash


while [[ -f "../toCrypt/toCrypt.txt" ]]; do

	python3 ../src/crypt.py ../tocrypt/tocrypt.txt ../toDecrypt/toDecrypt.txt

	rm ../toCrypt/tocrypt.txt

	sleep 2

done


