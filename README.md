# Shell Script Exercises

## Description

The exercises cover topics such as displaying the date and time in different formats, generating random numbers, performing basic arithmetic operations, using escape sequences, displaying a menu of options, searching for a word in a file, and appending data to a file. Each exercise includes a brief description of the script and the commands used.

## Exercise 1

This script uses the `date` command to display the current date and time in different formats. The `+` option is used to specify the format of the output.

- `date "+%Y-%m-%d"` displays the date in the format `YYYY-MM-DD`.
- `date "+%d/%m/%y"` displays the date in the format `DD/MM/YY`.
- `date "+%A %d de %B de %Y"` displays the full weekday name, followed by the day of the month, the full month name, and the year.
- `date "+%H:%M:%S"` displays the time in 24-hour format with hours, minutes, and seconds.
- `date "+%H:%M"` displays the time in 24-hour format with hours and minutes.

## Exercise 2

This script uses the `echo`, `read`, and `shuf` commands to generate random numbers with or without repetition.

First, it prompts the user to enter a value for `N` using `echo` and `read`. Then it uses the `shuf` command to generate random numbers between 0 and 9.

- The `-r` option is used to allow repetition of numbers.
- The `-i` option specifies the range of numbers to choose from.
- The `-n` option specifies how many numbers to generate.

The script generates `${N-1}` numbers with repetition and `${N-1}` numbers without repetition.

## Exercise 3

This script uses an `if` statement to check if two arguments were passed to it. If two arguments were passed, it performs basic arithmetic operations (addition, subtraction, multiplication, and division) on them using shell arithmetic. If not, it displays an error message.

## Exercise 4

This script uses the `echo` command to display text with escape sequences. The `-e` option is used to enable interpretation of escape sequences.

- `\n` is used for a newline.
- `\t` is used for a tab.

The first `echo` command does not use the `-e` option, so it displays the escape sequences as plain text. The second `echo` command uses the `-e` option, so it interprets the escape sequences and displays their effects.

## Exercise 5

This script defines a function called `mensaje` that displays a menu of options using multiple `echo` commands. It then uses a `while` loop and a `case` statement to repeatedly prompt the user to choose an option until they enter a valid one.

Each option performs a different task using various commands such as `echo`, `read`, `for`, and shell arithmetic. Some options also use redirection (`>`, `>>`) to write data to a file called `prueba.txt`.

## Exercise 6

This script prompts the user to enter a directory path, a filename, and a word using multiple `echo` and `read` commands. It then uses the `cd`, `grep`, and shell arithmetic commands to search for occurrences of the word in the specified file.

The script changes directory to `/`, then uses the `-c` option of the grep command to count how many times the word appears in the file. If it appears at least once, it displays a message saying that it exists. Otherwise, it displays a message saying that it does not exist.

## Exercise 7

This script uses a while loop and a case statement to repeatedly prompt the user to enter a word until they enter ":q". For each word entered (except ":q"), it prompts them to enter a number as well. It then appends both values separated by ":" to a file called "fichero.txt".

## Exercise 8

This shell script creates a two-dimensional array (matrix) with 10 rows and 10 columns. It then populates the matrix with random numbers between 0 and 9 using the `shuf` command. The script then displays the elements of the matrix in various ways: all elements at once, by position, by row, by column, and in a grid format. Finally, it displays the total number of elements in the matrix.
