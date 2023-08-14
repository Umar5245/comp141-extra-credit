#!/bin/bash

#could not alias in the shell script so I used a function to print the date instead
today() {
	date +%Y-%m-%d
}

mkdir output
cp my_text_file.txt output/
cd output
cat my_text_file.txt > read.txt
pwd > pwd.txt
ls > ls.txt
cp my_text_file.txt copy.txt
today > date.txt
wc -w my_text_file.txt | awk '{print $1}' > textcount.txt
ps | head -n 5 > process.txt
ifconfig | head -n 5 > netstat.txt
mount | head -n 5 > mount.txt
touch permissions.txt
chmod a+rwx permissions.txt
TESTENV1="test"
grep -E '\b\w{3,}\b' my_text_file.txt > regex.txt
cd ..

