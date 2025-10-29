# 13. ------ Copies files and directories ----------
echo "13. ------ Copies files and directories ----------"

cp file1.txt file2.txt          # → copy file1.txt to file2.txt
cp file.txt /home/user/docs/    # → copy file to another directory
cp -r folder1 folder2           # → copy directory and its contents recursively
cp -i file.txt backup.txt       # → ask before overwrite


# 14. ------ Moves or renames files and directories ----------
echo "14. ------ Moves or renames files and directories ----------"

mv file.txt /home/user/docs/    # → move file to another location
mv oldname.txt newname.txt      # → rename a file
mv -i file.txt backup.txt       # → ask before overwrite
mv folder1/ folder2/            # → move or rename directories


# 15. ------ Counts lines, words, and characters ----------
echo "15. ------ Counts lines, words, and characters ----------"

wc file.txt                     # → show lines, words, and bytes
wc -l file.txt                  # → count lines only
wc -w file.txt                  # → count words only
wc -c file.txt                  # → count characters (bytes)


# 16. ------ Opens the vi text editor ----------
echo "16. ------ Opens the vi text editor ----------"

vi file.txt                     # → open or create file in vi editor
# Inside vi:
# i   → insert mode (start editing)
# Esc → exit insert mode
# :w  → save (write)
# :q  → quit
# :wq → save and quit
# :q! → quit without saving


# 17. ------ Creates links (shortcuts) ----------
echo "17. ------ Creates links (shortcuts) ----------"

ln file.txt link_name           # → create a hard link
ln -s /path/to/file link_name   # → create a symbolic (soft) link


# 18. ------ Cuts (extracts) specific fields or columns from text ----------
echo "18. ------ Cuts (extracts) specific fields or columns from text ----------"

cut -c1-5 file.txt              # → extract first 5 characters of each line
cut -d',' -f1 file.csv          # → extract 1st field using comma as delimiter
cut -d':' -f1,3 /etc/passwd     # → extract multiple fields


# 19. ------ Reads input and writes to both screen and file ----------
echo "19. ------ Reads input and writes to both screen and file ----------"

echo "Hello World" | tee output.txt     # → show and save output to file
ls | tee files.txt                      # → save command output to a file
ls | tee -a files.txt                   # → append output to file instead of overwriting


# 20. ------ Sorts lines in text files ----------
echo "20. ------ Sorts lines in text files ----------"

sort file.txt                    # → sort alphabetically (A–Z)
sort -r file.txt                 # → reverse order (Z–A)
sort -n numbers.txt              # → sort numerically
sort -u file.txt                 # → remove duplicates while sorting


# 21. ------ Clears the terminal screen ----------
echo "21. ------ Clears the terminal screen ----------"

clear                            # → clear the terminal window


# 22. ------ Compares two files line by line ----------
echo "22. ------ Compares two files line by line ----------"

diff file1.txt file2.txt         # → show differences between files
diff -u old.txt new.txt          # → unified format (used in patches)
diff -r dir1/ dir2/              # → compare directories recursively
