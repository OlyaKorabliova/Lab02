#to run write - bash ./prog.sh
cd /home/anastasia/CLionProjects/Lab2/


g++ main.cpp -o main -pthread
MIN=10000
MAX=0


for i in {1..4}; do ./main 
while IFS='' read -r line || [[ -n "$line" ]]; do
	if (( $(echo "$line < $MIN" |bc -l) )); then
		MIN=$line
		fi
	if (( $(echo "$line > $MAX" |bc -l) )); then
		MAX=$line
		fi
	
	done < min_time.txt; 
done
echo $MIN  - min of general time  

DIFF=`echo $MAX-$MIN | bc`
echo  $DIFF - allowable error




