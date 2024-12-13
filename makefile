README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Description" >> README.md
	echo "A Bash script that challenges the user to guess the number of files in the current directory." >> README.md
	echo "" >> README.md
	echo "## Details" >> README.md
	echo "Generated on: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l guessinggame.sh | awk '{print $$1}')" >> README.md

.PHONY: clean
clean:
	rm -f README.md
