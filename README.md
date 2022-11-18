# Emma CLI Task

## CLI Commands Task

### 1. Running a terminal

#### Exercise: 1

Q: By examining the menu items for your terminal program, figure out how to create a new tab.
Extra credit: Learn the keyboard shortcut for creating a new tab.

Press `Command-T`. 
Choose `Shell` > `New Tab` > `New Tab with Profile`.

### 2. Our first command

#### Exercise: 1

Q: Write a command that prints out the string “hello, world”. Extra credit:  do it two different ways, both with and without using quotation marks.

 `echo "hello, world"` 
 `echo hello, world`

#### Exercise 2

Q: Type the command echo 'hello (with a mismatched single quote), and then get out of trouble using the terminate shortcut, either CTRL+C or COMMAND+C depending on the operating system.

`echo ‘hello`
`control+c`to exit

### 3. Man pages

#### Exercise 1

Q: According to the man page, what is the official description of echo on your system?

##### The echo utility writes any specified operands, separated by single blank(‘ ’) characters and followed by a newline (‘\n’) character, to the standard output.

#### Exercise 2

Q: By reading the man page for echo, determine the command needed to print out “hello” without the trailing newline, and verify using your terminal that it works as expected.

##### trailing new line It means that new line character '\n' at the end of a string is removed.

`echo -n hello`

### 4. Editing the line

#### Exercise 1

Q: Using the up arrow, print to the screen the strings “fee”, “fie”, “foe”, and “fum” without retyping echo each time.

`echo "fee"`, 
##### press up-arrow and replace "fee" with "fie" and repeat

#### Exercise 2

Q: Use any combination of Ctrl-A, Ctrl-E, arrow keys, or Option-click to change the occurrences of the short s to the archaic long s “ſ”.

##### use ctrl-A to get to beginning of the line and  ctrl-E to get to end of the line, or arrow keys to navigate and edit the line.

### 5. Cleaning up

#### Exercise 1

Q: Clear the contents of the current tab.

##### We can type clear or control+l

#### Exercise 2

Q: Open a new tab, execute echo ’hello’, and then exit.

`command+t` 
type `echo 'hello'`
type `exit` or `control+d`

#### Exercise 1

Q: Write a command to print the string Use "man echo", including the quotes; i.e., take care not to print out Use man echo instead.

type `echo 'Use "man echo"'`

#### Exercise 2
Q: By running man sleep, figure out how to make the terminal “sleep” for 5 seconds, and execute the command to do so. After waiting the requisite 5 seconds, execute the command to sleep for 5000 seconds, realize that’s well over an hour, and then use the instructions from Box 4 to get out of trouble.

type `sleep 5s` - it sleeps for 5s
type `sleep 5000s` to get out of this `press ctrl-c` or `Esc`


## Manipulating Files

### 1: Redirecting and appending

#### Exercise 1

Q: Using echo and >, make files called line_1.txt and line_2.txt containing the first and second lines of Sonnet 1, respectively. Sonnet 1 can be found at the end of the page


Type `echo "From fairest creatures we desire increase" > line_1.txt` 
echo `"That thereby beauty's rose might never die," > line_2.txt`

#### Exercise 2

Q: Replicate the original sonnet_1.txt (containing the first two lines of the sonnet) by first redirecting the contents of line_1.txt and then appending the contents of line_2.txt. Call the new file sonnet_1_copy.txt, and confirm using diff that it's identical to sonnet_1.txt.

`echo "From fairest creatures we desire increase," > line_1.txt `
`echo "That thereby beauty's rose might never die," >> line_2.txt` 
`cat line_1.txt line_2.txt > sonnet_1_copy.txt`

#### Exercise 3

Q: Use cat to combine the contents of line_1.txt and line_2.txt in reverse order using a single command, yielding the file sonnet_1_reversed.txt.

`cat line_2.txt line_1.txt > sonnet_1_reversed.txt`

### 2: Listing

#### Exercise 1

Q: What’s the command to list all the files (and directories) that start with the letter s?

`ls s*`

#### Exercise 2

Q: What is the command to list all the files that contain the string onnet, long-form by reverse modification time?

`ls -rtl *onnet*`

(RTL- Right to Left? (Not Sure))

#### Exercise 3

Q: What is the command to list all files (including hidden ones) by reverse modification time, in long form?

`ls -artl`

### 3: Renaming, copying, deleting

#### Exercise 1

Q: Use the echo command and the redirect operator > to make a file called foo.txt containing the text hello, world. Then, using the cp command, make a copy of foo.txt called bar.txt. Using the diff command, confirm that the contents of both files are the same.

`echo "hello world" > foo.txt` 
`cp  foo.txt  bar.txt` 
`diff foo.txt bar.txt`

#### Exercise 2

Q: By combining the cat command and the redirect operator >, create a copy of foo.txt called baz.txt without using the cp command.

`cat foo.txt > baz.txt`

#### Exercise 3

Q: Create a file called quux.txt containing the contents of foo.txt followed by the contents of bar.txt.

`cat foo.txt bar.txt > quux.txt`

#### Exercise 4

Q: How do rm nonexistent and rm -f nonexistent differ for a nonexistent file?

##### When you put rm nonexistant it asks for a confirmation to remove whereas rm -f nonexistant does not.

### 4: Summary

#### Exercise 1

Q: By copying and pasting the text at the end of this file, use echo to make a file called sonnet_1_complete.txt containing the full (original) text of Shakespeare's first sonnet.

##### `Echo` “ From fairest creatures we desire increase, That thereby beauty’s rose might never die, But as the riper should by time decease, His tender heir might bear his memory; But thou, contracted to thine own bright eyes, Feed’st thy light’s flame with self-substantial fuel, Making a famine where abundance lies, Thyself thy foe, to thy sweet self too cruel. Thou that art now the world’s fresh ornament And only herald to the gaudy spring, Within thine own bud buriest thy content, And, tender churl, mak’st waste in niggarding. Pity the world, or else this glutton be, To eat the world’s due, by the grave and thee.” >  `sonnet_1_complete.txt`

To read  we use `cat sonnet_1_complete.txt`

#### Exercise 2

Q: Type the sequence of commands needed to create an empty file called foo, rename it to bar, and copy it to baz.

`touch foo`
`mv foo bar`
`cp bar baz`

#### Exercise 3

Q: What is the command to list only the files starting with the letter b?

`ls b*`

#### Exercise 4

Q: Remove both bar and baz using a single call to rm.

`rm ba*`

## Inspecting files

### 1. Downloading a file

#### Exercise 1

Q: Use the command curl -I www.learnenough.com to fetch the HTTP header for the Learn Enough website. What is the HTTP status code of the address? How does this differ from the status code of Learn Enough to Be Dangerous ?

##### HTTP status code of the address learnenough.com is 300 : HTTP/1.1 301 Moved Permanently

##### HTTP status code for the site  www.learnenough.com is 200: HTTP/2 200 

#### Exercise 2

Q: Using ls, confirm that sonnets.txt exists on your system. How big is it in bytes?

`ls -l sonnet_1_complete.txt`
##### The file is 618 Bytes

#### Exercise 3

Q: Using the -h ("human-readable") option to ls, list the long form of the sonnets file with a human-readable byte count.

`ls -lh sonnet_1_complete.txt`
##### -rw-r--r--  1 danielanthony  staff   618B Nov 17 20:42 sonnet_1_complete.txt

#### Exercise 4

Q: Suppose you wanted to list the files and directories using human-readable byte counts, all, by reverse time-sorted long-form. Why might this command be the personal favourite of every engineer?

`ls -hartl` 

### 2. Making heads and tails of it

#### Exercise 1

Q: By piping the results of tail sonnets.txt through wc, confirm that (like head) the tail command outputs 10 lines by default.

`tail sonnets.txt | wc`

#### Exercise 2

Q: By experimenting with different values of n, find a head command to print out just enough lines to display the first sonnet in its entirety

`head -n 17 sonnets.txt`

#### Exercise 3

Q: Pipe the results of the previous exercise through tail (with the appropriate options) to print out only the 14 lines composing Sonnet 1.

`head -n 17 sonnets.txt | tail -n 14`

#### Exercise 4

Q: To simulate the creation of a log file, run ping http://learnenough.com > learnenough.log in one terminal tab. (The ping command "pings" a server to see if it's working.) In a second tab, type the command to tail the log file. (At this point, both tabs will be stuck, so once you've gotten the gist of tail -f you should use the technique from Box 4 to get out of trouble.)

`ping learnenough.com > learnenough.log`
`tail -f learnenough.log`
Use `control+c` to stop the ping


### 3. Less is more

#### Exercise 1

Q: Run less on sonnets.txt. Go down three pages and then back up three pages. Go to the end of the file, then to the beginning, then quit.

First run `less sonnets.txt`
press space bar 3 times to go down 3 pages
press `ctrl-b` three times to back up 3 pages
`shift+g` to go to the end of the file
`Q` to quit

#### Exercise 2

Q: Search for the string “All” (case-sensitive). Go forward a few occurrences, then back a few occurrences. Then go to the beginning of the file and count the occurrences by searching forward until you hit the end. Compare your count to the result of running grep All sonnets.txt | wc.

`grep -n "All" /Users/danielanthony/Downloads/sonnets.txt` 
Total count 10 
`grep All sonnets.txt | wc`

#### Exercise 3

Q: Using less and / (“slash”), find the sonnet that begins with the line “Let me not”. Are there any other occurrences of this string in the Sonnets?

`less sonnets.txt`
`/Let me not`
Yes it occurs in Sonnet CXVI

#### Exercise 4

Q: By searching for the string “sort” in the man page for ls, discover the option to sort files by size. What is the command to display the long form of files sorted so the largest files appear at the bottom?

`ls -slr`


### 4. Grepping

#### Exercise 1

Q: By searching man grep for “line number”, construct a command to find the line numbers in sonnets.txt where the string “rose” appears.

`grep -n rose sonnets.txt`

#### Exercise 2

Q: You should find that the last occurrences of “rose” is (via “roses”) on line 2203. Figure out how to go directly to this line when running less sonnets.txt.

`less sonnets.txt`
`2203(Shift+G)`

#### Exercise 3

Q: By piping the output of grep to head, print out the first (and only the first) line in sonnets.txt containing “rose”.

`grep -n rose sonnets.txt | head -n 1`

##### Line 4:That thereby beauty's rose might never die

#### Exercise 4

Q: In previous exercise, we saw two additional lines that case-insensitively matched “rose”. Execute a command confirming that both of the lines contain the string “Rose” (and not, e.g., “rOSe”).

`grep Rose sonnets.txt`

#### Exercise 5

Q: Write a command confirming that the number of lines matching “Rose” but not matching “rose” is equal to the expected 2.

`grep Rose sonnets.txt | grep  rose | wc`

### 5. Summary

#### Exercise 1

Q: Pipe history to less to examine your command history. What was your 17th command?

`grep Rose sonnets.txt | grep  rose | wc`

#### Exercise 2

Q: By piping the output of history to wc, count how many commands you’ve executed so far.

`history|wc`
Total count is 106 

#### Exercise 3

Q: By piping the output of history to grep, determine the number for the last occurrence of curl.

`history | grep`
No output

#### Exercise 4

Q: Use the result from the previous exercise to re-run the last occurrence of curl.

No Output

#### Exercise 5

Q: What do the O and L options in curl mean?

##### -O writes the output into a file called as remote file
##### -L signifies the location

## Directories

### 1. Structure

#### Exercise 1

Q: Write in words how you might speak the directory ~/foo/bar.

##### root slash foo slash bar

#### Exercise 2

Q: In /Users/bill/sonnets, what is the home directory? What is the username? Which directory is deepest in the hierarchy?

##### home directory is users and username is bill and deepest directory is sonnets.

#### Exercise 3

Q: For a user with username bill, how do /Users/bill/sonnets and ~/sonnets differ (if at all)?

##### ~/Users/bill/sonnets belongs to a user named as bill and  ~/sonnets belongs to  root folder.

### 2. Making directories

#### Exercise 1

Q: What is the option for making intermediate directories as required, so that you can create, e.g., ~/foo and ~/foo/bar with a single command?

`-p`

#### Exercise 2

Q: Use the option from the previous exercise to make the directory foo and, within it, the directory bar (i.e., ~/foo/bar) with a single command.

`mkdir -p ~/foo/bar`

#### Exercise 3

Q: By piping the output of ls to grep, list everything in the home directory that contains the letter “o”.

`ls -a | grep o`

### 3. Navigating directories

#### Exercise 1

Q: How do the effects of cd and cd ~ differ (or do they)?

##### There is no difference both the commands lead to root directory.

#### Exercise 2

Q: Change to text_directory, then change to second_directory using the "one directory up" double dot operator ... If these are directories don’t exist by default, you could either create them or use some other directories that already exist in you system.


`mkdir text_directory`
`mkdir -p text_directory/second_directory`
`cd text_directory`
`cd second_directory`
`cd ..`

#### Exercise 3

Q: From wherever you are, create an empty file called nil in text_directory using whatever method you wish.

`cd text_directory`
`touch nil`

#### Exercise 4

Q: Remove nil from the previous exercises using a different path from the one you used before. (In other words, if you used the path ~/text_directory before, use something like ../text_directory or /Users/username/text_directory.)

`rm /Users/danielanthony/text_directory/nil`

### 4. Renaming, copying, deleting directories

#### Exercise 1

Q: Make a directory foo with a subdirectory bar, then rename the subdirectory to baz.

`mkdir -p ~/foo/bar`
`mv ~/foo/bar ~/foo/baz`

#### Exercise 2

Q: Copy all the files in text_files, with directory, into foo.

`cp -r text_directory foo`

#### Exercise 3
Q: Copy all the files in text_files, without directory, into bar.

`cp -r foo/ bar` 

#### Exercise 4

Q: Remove foo and everything in it using a single command.

`rm -rf foo`

### 5. Summary

#### Exercise 1

Q: Using a single command-line command, make a directory foo, change into it, create a file bar with content baz, print out bar's contents, and then cd back to your home directory.

`mkdir foo && cd foo && touch baz > bar && cd`

#### Exercise 2

Q: What happens when you run the previous command again? How many of the commands executed? Why?

##### It throws an error mkdir: foo: File exists (because the directory already exists).

#### Exercise 3

Q: Explain why the command rm -rf / is unbelievably dangerous, and why you should never type it into a terminal window, not even as a joke.

##### -f flag force removes files with out any warning.

#### Exercise 4

Q: How can the previous command be made even more dangerous? (This command is so dangerous you shouldn’t even think it, much less type it.)

##### It could be made dangerous if given admin access like typing sudo.
