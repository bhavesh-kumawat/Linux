# ======================================================
# 🗜️ FILE COMPRESSION & ARCHIVING COMMANDS
# ======================================================

# 47. ------ Compress files using gzip ----------

gzip file.txt                   # → compress file.txt → creates file.txt.gz
gzip -v file.txt                # → show compression details
gzip -9 file.txt                # → compress with maximum compression level
gzip -r logs/                   # → compress all files in a directory recursively


# 48. ------ Decompress .gz files using gunzip ----------

gunzip file.txt.gz              # → decompress file.txt.gz → restores file.txt
gunzip -v file.txt.gz           # → verbose decompression
gunzip -r /var/logs/            # → decompress all .gz files in a directory


# 49. ------ View compressed files without extracting ----------

zcat file.txt.gz                # → display contents of compressed file


# 50. ------ Create tar archive (package multiple files/folders) ----------

tar -cvf archive.tar file1 file2 dir/   # → create tar archive
tar -cvf backup.tar /var/www/           # → archive entire directory
tar -tvf archive.tar                    # → list contents of a tar archive


# 51. ------ Extract tar archive ----------

tar -xvf archive.tar             # → extract files from archive
tar -xvf archive.tar -C /path/   # → extract files to a specific directory


# 52. ------ Create compressed tar.gz archive ----------

tar -czvf backup.tar.gz /project   # → create gzip-compressed archive
tar -czf logs_2025.tar.gz /var/log  # → same as above (quiet mode)


# 53. ------ Extract compressed tar.gz archive ----------

tar -xzvf backup.tar.gz           # → extract compressed archive
tar -xzvf backup.tar.gz -C /tmp   # → extract to specific directory


# 54. ------ Create zip archive ----------

zip myfiles.zip file1.txt file2.txt   # → compress multiple files into zip
zip -r project.zip /home/user/project  # → compress entire directory recursively
zip -r9 backup.zip /var/logs/         # → maximum compression level


# 55. ------ Extract zip archive ----------

unzip myfiles.zip                 # → extract files from zip
unzip myfiles.zip -d /tmp/output  # → extract to specific directory
unzip -l myfiles.zip              # → list contents of zip file
