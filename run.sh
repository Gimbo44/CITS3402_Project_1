#!/usr/bin/env bash
rm -f  output.txt
for i in $(seq 100)
do
	echo $i;
	echo $(date +"%T");
	rm -f out.txt;
	./p1 >> output.txt;
	echo $(date +"%T");
done

x=0;
size=0;

filelines=`cat output.txt`
for line in $filelines; do

	size=$(($size+1));
	x=$(echo "scale=20; $x+$line" | bc)

done

echo "scale=10; $x/$size" | bc
