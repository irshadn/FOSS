un=$2
echo "no of arguments : $#"
count=$#
FILE=$1
if [ -f "$FILE" ]
then
echo " FILE : $FILE EXIST"
else
echo " FILE : $FILE DOES NOT EXIST : NOT FOUND"
fi
if grep -q $un "$FILE"
then
echo "$un present"
else
echo "$un not present"
echo $un >> $FILE
fi
