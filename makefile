all: README.md
README.md:
	echo 'Guessing Game' > README.md
	echo 'makefile ran at $(shell date +%Y-%m-%d:%H:%M)' >> README.md
	echo 'The number of lines of code contained in guessinggame.sh is $(shell cat guessinggame.sh | wc -l)' >> README.md