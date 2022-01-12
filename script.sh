MYPATH="/MYPATH"

for x in $(find $MYPATH -regextype posix-extended -iregex ".*\.(mp4|mkv|avi|wmv|ts|vob|divx|m4v|mpeg|rmvb|flv)")
do
	echo $x
	curl -I http://localhost:32405"$x".hd.bif
done
