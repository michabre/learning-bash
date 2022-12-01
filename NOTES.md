# Learning Bash

## The UNIX philosophy

- Write programs that do one thing and do it well
- Write programs to work together

## 2. First Steps

### SANDBOXES

```bash
# build Sandbox container
docker build -t sandbox .

# enter container
docker run -it sandbox
```

Verify you are running BASH
```shell script
echo $BASH
```

### Commands and Arguments

An argument that starts with a dash is called an option
```shell script
ls -a # list all files (including hidden)
ls -l # list files in long format
ls -l -a # combine both a and l options
ls -la # combine both a and l options 
ls -la /bin # list all in /bin in long format
```
- order of options does not matter
- filename has to be at the end

```shell script
# manual pages
man ls 
man cd 
man man
# space to move down:
# b to move back
# q to exit
```
History

- use up and down arrow keys to use History
  - Ctrl-p: previous
  - Ctrl-n: next


## 3. Basic File Management

```shell script
mkdir "dirname" # create a directory
touch "x" # creates empty file named x

# handle text files
cat # show contents of a file
less # pager with lots of features 

# open files on Linux
gnome-open # Gnome
kde-open # Kde
exo-open # Xfce
```

- Linux filenames are case-sensitive
- Mac OS filenames are not

```shell script
ls -R # show contents of directory recursively
# copy files
cp <filename> <destination>/<newname> # copy file to another directory with a new filename(optional)
cp * <directory> # copy all files and move to another directory
```

```shell script
# copying directories
cp -R <source> <target> # copy directory to new location
cp -R <source1> <file1> <source2> <source3> <target> # copy directories and files to a directory
```

```shell script
# moving files
mv <file> <target>

# deleting files
# Warning: permanently removes files
rm <file> # delete file
rm <file1> <file2> <file3> # remove these 3 files
rm * # remove all files from this directory

# remove directory
rmdir # will remove empty directories

# Warning: recursively remove a directory and everything in it 
rm -r <directory>

# the -i switch
# prompt before completing command
cd -i
mv -i
rm -ri # for recursive actions
```

## 4. Using Bash More Effectively

### Using Wildcards

- *
  - matches anything
  - including nothing at all
- ?
  - matches exactly 1 character
- [acb7_]
  - matches one of the characters in the list
  - above would match a, c, d, 7, or _
  - [^ax2] matches anything but a, x, 2
  - ranges: [a-z], [0-9], [A-C3-5]
  
```shell script
ls D*s # show me the contents of all directories that start with a D and end with an s 
ls -dl D*s # show me all directories named with D and end with an s
```

### Brace Expansion

- generates strings
- syntax: pre {list,of,strings} post
  example:
    touch {a,b,c}.txt is computed as touch a.txt b.txt c.txt
    mv file.{txt,jpg} dir/ is computed as mv file.txt file.jpg dir
- brace expansion comes before wildcard expansion

### Output Redirection

- redirecting standard output stream
- >
  - saves the output of a command to a file
  example:

  ```shell script
  ls > listing.txt
  cat > story.txt
  ```

  - this will overwrite existing files!
- >>
  - appends the output to the end of a file

  ```shell script
  echo "buy milk" >> shopping.txt
  ```

- echo
  - prints string
  - good idea to test commands using echo

### Pipes

- takes the output of the command before it and passes as input into the command after it
  example:
  ls | less 

  ```shell
  # this will take a list of all files in the current directory and 
  # pass that list into less for easy searching
  grep 1978 oscars.tsv | sort
  # search for 1978 in oscars.tsv and
  # then sort alphabetically
  grep 1978 oscars.tsv | sort > 1978_films.txt
  # same thing but print results into a txt file
  ```

- cut
  - used to select a column in a file using columns
  example: 

  ```shell
  cut -f 3 oscars.tsv | grep 4 | wc -l
  # find the 3rd columns
  # search for the number 4
  # list the total
  ```

- pipes glue commands together
  
### Command Substitution

- replace a command with its output
  - output will become a part of the command line
  - put command between $()
  example:
  echo "hello, $(whoami)"
- note the use double quotes
- older form uses backticks
  echo "you are currently on `hostname`"

### The Terminal vs The Command Line

- Bash: Text in, text out
- Terminal
  - handle keys pressed
  - draws text
  - fonts, colors, scrolling, copy/paste
  
### Some Key Combinations

- see [cheatsheet](introduction-bash-shell-linux-mac-os/5-introduction-bash-shell-linux-mac-os-m5-processing-exercise-files/demos/before/cheatsheet.pdf)
  
### Searching Through History

- Ctrl-R to search history
  - use arrow key to get out of search mode

## 5. Filtering and Processing Text

- Editing Text Files on the Command Line
  - Editors
    - Nano
    - Vi (vim)
      - "i" for Insert Mode
      - "Esc" for Command Mode
      - save :w
      - exit :q or :q! (exit without saving)
      - to learn more: Vim Tutor
    - Emacs
      - very full-featured
      - F10 to access menu
- Sorting with **sort**
 - key
   -k
   -k2 (to specify 2nd column)
   sort -nk2 <file> (also sort numerically)
   sort -rnk2 <file> (also sort numerically but reverse)
   uniq (filters out repeat values)
   uniq -c (show how many each value is repeated)

- Head and tail
  - head
    - first 10 lines of input by default
  - tail
    - first 10 lines of input by default
    - options
      -f (follow a file)
  - options
    -n <number> (number of lines lines)\
    Examples:
    head -n 1 (show first line)
    tail -n 1 (show last line)
- Counting with **wc** (wordcount)
  Example
  wc demo/alice
  1702 (# of lines) 12763 (# of words) 74703 (# of bytes) demo/alice
  ls | wc -l (how many files are in this directory)
  ls -a | wc -l (include hidden files) 
  - Options
    -l (get number of lines)
- Searching fo Text with **grep**
  - for searching and filtering text
  Example:
  grep Rings oscars.tsv (search for Rings)
  grep bruce *grades (search for 'bruce' in all 'grades' files)
  - options
    -i (for case insensitivity)
    grep -i steve *grade (search for all variations of steve in all grades files)
    -v <string> (filter out the string from results. inverts search)
    grep -v "^$" math_attendance |sort |uniq (filter out empty lines)
    grep -Ev "^$|lecture" math_attendance |sort |uniq (use extended regular expressions to also filter out 'lecture')
    ls -l | grep "^d" (list out only directories)
    ls -l | grep -v "^d" (show anything but directories)
  - supports Regular Expressions
- Searching for Files with **find**
  find <directory> -name <searchTerm>
  find . -name "*txt" (find all txt files in the current directory)
  - options
    -name <string> (find files that match the string)
- Replacing characters with **tr**
  tr S s < students.txt (replace S with s in students.txt)

- Advanced tools
  - sed (Stream editor)
    - commonly used to replace words
  - awk
    - complete programming language
  - Perl
  - Python
  
- Column-based data
  - CSVs, TSVs, etc
  - SORT options
    -n (sort numerically)
    -k (specify key; be sure to add column number)
    -t\<delimiter> (specify delimiter)

  ```shell script
  # combines columns
  paste *grades
  
  # matches keys - joins them
  join math_sorted phys_sorted
  ```

  - organizing Column-based data
    - sort -k to sort on a specific column
      - use -t to specify delimiter
    - cut to select a column from the input
      - cut -f 2 shows only second column
      - use -d for delimiter
    - paste
      - puts lines of multiple input files next to each other in the output
    - join
      - joins input files based on matching key
      - by default it assumes first column

## 6. Jobs and Processes

- Background Jobs
  - Ctrl-Z to stop a running command
  - use bg to run command in the background
  - add & to run command in background
  
- Job Control
  - Ctrl-Z: suspends a running job
  fg (send job to foreground)
  bg (send job to background)
  - redirect output to a file; runs in background
  find . > all_files &
  
- Killing Jobs and Processes
  - Ctrl-C: end process
  - use **kill** to end any program
  - kill job by ID (fg and bg work too)
    kill %2 
    kill %cp
  - use **jobs** to list all running jobs
  - processes
    bs -e (to see all system processes)
    bs -e | grep calc (find a running process named 'calc')
    - then use kill to end a process by ID
    pkill <string> (kill any process matching string)
    xkill (point out program to kill on X Windows)
  - "hard" kill with -KILL
    kill -KILL <process id>
    - use as last resort
  
- Inspecting Processes
  jobs (shows bash job on current shell)
  ps (display your processes)
  - display all processes
    Linux: ps -e
    Mac: ps ax
  - **top**
    - shows top running processes

## 7. Customization

- Aliases

  ```shell script
  # list aliases
  alias 
  
  # create an alias for ls
  alias ls='ls --color=auto'
  
  # rm always asks for verification
  alias rm='rm -i'
  ```

  - use backslash to ignore alias
  $ \ls # this will run the default ls command
  
- Saving your customization with .profile and .bashrc

- Environment Variables
  - Prompt
   PS1
  - Path
    - where bash looks for executables
    PATH="$PATH:~/bin"
  - Editor
    - set preferred editor

  ```shell script
  # list environment variables
  env 
  ```

  - export variables that are needed in subprocesses
    export EDITOR="nano"
  
- Setting your default shell

  ```shell script
  # change shell
  chsh
  
  # logout to login with the new shell
  
  # verify 
  echo $SHELL 
  ```
  