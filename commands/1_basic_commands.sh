# 1. ------ Lists files and directories in the current directory -----------
echo "1. ------ Lists files and directories in the current directory -----------"
ls              # → show contents
ls -l           # → detailed list (permissions, size, owner, etc.)
ls -a           # → show hidden files (files starting with .)
ls -lh          # → human-readable file sizes
ls -R           # → list directories and subdirectories recursively


# 2. ------ Displays the current working directory ----------
echo "2. ------ Displays the current working directory -----------"

pwd             # → print current directory path


# 3. ------ Creates directories ----------
echo "3. ------ Creates directories ----------"

mkdir new_dir           # → create a new directory
mkdir -p dir1/dir2      # → create nested directories (parents if not exist)


# 4. ------ Removes files or directories ----------
echo "4. ------ Removes files or directories ----------"

rm file.txt             # → delete a file
rm -r folder/           # → delete a directory and its contents (recursive)
rm -rf folder/          # → force delete without confirmation (⚠ dangerous)
rmdir empty_folder      # → remove an empty directory only


# 5. ------ Creates empty files or updates timestamps ----------
echo "5. ------ Creates empty files or updates timestamps ----------"

touch newfile.txt       # → create new empty file
touch file.txt          # → update last modified time


# 6. ------ Changes the current directory ----------
echo "6. ------ Changes the current directory -----------"

#cd /path/to/dir # → go to specific directory
cd              # → go to home directory
cd ..           # → go up one level
cd -            # → go to previous directory


# 7. ------ Displays or concatenates file contents ----------
echo "7. ------ Displays or concatenates file contents ----------"

cat file.txt            # → show entire content of a file
cat file1 file2         # → display multiple files
cat file1 file2 > out.txt  # → merge files and save into out.txt


# 8. ------ Displays content of compressed (.gz) files ----------
echo "8. ------ Displays content of compressed (.gz) files ----------"

zcat file.txt.gz        # → view compressed file without extracting


# 9. ------ Displays the beginning of a file ----------
echo "9. ------ Displays the beginning of a file ----------"

head file.txt           # → show first 10 lines
head -n 5 file.txt      # → show first 5 lines


# 10. ------ Displays the end of a file ----------
echo "10. ------ Displays the end of a file ----------"

tail file.txt           # → show last 10 lines
tail -n 20 file.txt     # → show last 20 lines


# 11. ------ Monitors a file in real-time ----------
echo "11. ------ Monitors a file in real-time ----------"

tail -f logfile.log     # → continuously show new lines as they are added


# 12. ------ Views file content one page at a time ----------
echo "12. ------ Views file content one page at a time ----------"

# less file.txt           # → scroll through file (↑ ↓, space, q to quit)
# more file.txt           # → similar to less, but less flexible