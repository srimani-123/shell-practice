#!/bin/bash

movies=("rrr" "rowdy rathode" "krishna")
#index starts from 0, size starts from 3

echo "first movie: ${movies[0]}"
echo "second movie: ${movies[1]}"
echo "third movie: ${movies[2]}"

echo "All movies are: ${movies[@]}"
