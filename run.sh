#!/usr/bin/env bash
x=0;
for ii in $(seq 9)
do
	rm -f  output/vanilla$ii.txt
	for i in $(seq 1)
	do
		echo $i
		x=$(echo "scale=20; 10^$ii" | bc);
		echo $x;
		echo $(date +"%T")

		./p1 $x >> output/vanilla$ii.txt;
		echo $(date +"%T");
	done
done




for ii in $(seq 9)
do
	x=0;
	size=0;
	filelines=`cat output/vanilla$ii.txt`
	for line in $filelines; do

		size=$(($size+1));
		x=$(echo "scale=20; $x+$line" | bc)
		echo "Vanilla $ii:"
		echo "scale=10; $x/$size" | bc


	done
done



