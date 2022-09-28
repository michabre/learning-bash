# Linux Directories

## Notes


## Commands

```shell
# create file
touch file.text

# create multiple files
touch file file1 file2 file3

# create file with cat
cat > file.txt
# add content to file
# ctrl-d to save/exit


# create file and save with EOF 
# cat << EOF > filename.txt
# end with EOF and ENTER

# create file with 1 line with echo
echo "This is some cool stuff" > file.txt

# make a directory
mkdir coolstuff

# make multiple directories
mkdir dir1 dir2 dir3

# move files
mv <file> <directory>

# move and rename
mv <file> <directory>/<newFileName>

# copy and move
cp <file> <directory>

# give file a new name
cp <file> <directory>/<newFileName>

# view working directories
tree

# remove a directory
rmdir <directory>

# remove a file
rm <file>

# remove a directoy full of a files
rm -r <directory>

# remove without warnings
rm -rf --no-preserve-root <directory>
```
