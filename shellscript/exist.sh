ping -cl localhost
if [ $? - eq0 ]
then
       echo "ping works"
else
	echo "not works"
fi
