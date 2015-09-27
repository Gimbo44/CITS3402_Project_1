#!/usr/bin/env bash
rm -f  output.txt
for i in $(seq 5)
do
	echo $i;
	echo $(date +"%T");
	rm -f out.txt;
	./p1 >> output.txt;
	echo $(date +"%T");

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



