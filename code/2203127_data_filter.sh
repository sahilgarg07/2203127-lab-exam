#!/usr/bin/bash

# Taking input from user 

echo "Enter filename"
read file_name

echo "Enter field name"
read field_name

echo "Enter field value"
read field_value

touch ${file_name:0:2}"_"$field_name"_"$field_value".csv"

echo 

# Printing the first line

echo $file_name $field_name $field_value $(wc -l $file_name) >> ${file_name:0:2}"_"$field_name"_"$field_value".csv"

echo >> ${file_name:0:2}"_"$field_name"_"$field_value".csv"

# Printing the second line 

echo $(head -1 $file_name) >> ${file_name:0:2}"_"$field_name"_"$field_value".csv"

echo >> ${file_name:0:2}"_"$field_name"_"$field_value".csv"

# Printing employee records which fit the criteria

echo $(cat $file_name | grep $field_value) >> ${file_name:0:2}"_"$field_name"_"$field_value".csv"



