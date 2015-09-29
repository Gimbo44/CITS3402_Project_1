#!/usr/bin/env bash
x=0;
for ii in $(seq 7)
do
	rm -f  output/v2.5_$ii.txt;
	for i in $(seq 20)
	do
		echo $i
		x=$(echo "scale=20; 10^$ii" | bc);
		echo $x;
		echo $(date +"%T")

		./p1 $x >> output/v2.5_$ii.txt;
		echo $(date +"%T");
	done
done




for ii in $(seq 7)
do
	x=0;
	size=0;
	filelines=`cat output/v2.5_$ii.txt`
	for line in $filelines; do

		size=$(($size+1));
		x=$(echo "scale=20; $x+$line" | bc)
		echo "Vanilla $ii:"
		echo "scale=10; $x/$size" | bc


	done
done



