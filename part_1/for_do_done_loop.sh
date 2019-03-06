#!/bin/bash

#for-do-done loop

for file in ~/homework_6/part_2/book_pages/*.txt
do
    echo "The word was $1" >> output.txt
    source ~/homework_6/part_1/string_finder_WEYAND.sh $file $1 >> output.txt
done
