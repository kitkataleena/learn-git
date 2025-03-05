# Takes file names as command line arguments to print a list of the unique species in each file
# Usage: accepts any number of file names as command line arguments 

for file in %@
do
	echo "Unique Species in $file:"
	# count species names
	cut -d, -f 2 $file | sort | uniq
done
