# pad single digit filenames (e.g. 6.png) with one zero (e.g. 006.png)
for file in data_30/*/[0-9].png; do \
	path=$(echo $file | awk '{gsub("[0-9]+.png", ""); print}');
	new_file_name=$(echo $file | awk '{gsub("data_30/.*/", ""); print}' | \
			awk '{print "00"$1}');

	mv $file $path$new_file_name;
	echo $path$new_file_name;
done;

# pad double digit filenames (e.g. 10.png) with one zero (e.g. 010.png)
for file in data_30/*/[0-9][0-9].png; do \
	path=$(echo $file | awk '{gsub("[0-9]+.png", ""); print}');
	new_file_name=$(echo $file | awk '{gsub("data_30/.*/", ""); print}' | \
			awk '{print "0"$1}');
	mv $file $path$new_file_name;
	echo $path$new_file_name;
done;
