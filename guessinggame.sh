#! usr/bin/env bash
# File:  guessinggame.sh

function number_of_files_in_directory () {
	dir_name=$1
	num_files=$(ls -al $dir_name | grep -E "^-" | wc -l)
	echo $num_files
}

function is_variable_integer () {
	integer_pattern=^[0-9]\+$
	if [[ $1 =~ $integer_pattern ]]; then
		echo 'true'
	else
		echo 'false'
	fi
}

echo "Guess how many files are in the current directory"
current_directory=$(pwd)
number_of_files=$(number_of_files_in_directory $current_directory)
read response
bad_response=true
while [[ badrespons ]]; do
	is_input_valid=$(is_variable_integer $response)
	if [[ $is_input_valid = 'false' ]]; then
		echo "The input should be a positive integer, $response isn't"
	else
		if [[ $response -gt $number_of_files ]]; then
			echo "You guessed $response, the guess was too high"
		elif [[ $response -lt $number_of_files ]]; then
			echo "You guessed $response, the guess was too low"
		else 
			echo "Brilliant! the number of files in this directory is, indeed, $response"
			break
		fi
	fi
	echo "Try guessing how many files are in the current directory, again."
	read response 
done