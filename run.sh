rm -f  output.txt
for i in $(seq 100)
do
	./p1 >> output.txt;
done

x=0;
size=0;

filelines=`cat output.txt`
for line in $filelines; do

	size=$(($size+1));
	x=$(echo "scale=20; $x+$line" | bc)

done

echo "scale=10; $x/$size" | bc
