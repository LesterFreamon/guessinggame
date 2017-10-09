all: README.md
README.md:
	echo 'Guessing Game\n' > README.md
	echo 'makefile ran at $(shell date +%Y-%m-%d:%H:%M)\n' >> README.md
	echo 'The number of lines of code contained in guessinggame.sh is $(shell cat guessinggame.sh | wc -l)' >> README.md