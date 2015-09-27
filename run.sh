#!/usr/bin/env bash
<<<<<<< HEAD
rm -f  output.txt
for i in $(seq 5)
do
	echo $i;
	echo $(date +"%T");
	rm -f out.txt;
	./p1 >> output.txt;
	echo $(date +"%T");
=======
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
>>>>>>> 2fdc9e9462ef0f99af7fef90962dfbf0d4ca44cf
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



