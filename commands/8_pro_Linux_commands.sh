# ======================================================
# 🧾 TEXT PROCESSING & LOG ANALYSIS COMMANDS
# ======================================================

# 71. ------ Search for text patterns using grep ----------

grep "error" logfile.log                 # → search for the word 'error' in a file
grep -i "error" logfile.log              # → case-insensitive search
grep -n "error" logfile.log              # → show line numbers with matches
grep -r "error" /var/log/                # → recursively search inside directory
grep -v "info" logfile.log               # → show lines that do NOT match 'info'
grep -A 3 -B 2 "failed" logfile.log      # → show 3 lines after and 2 before each match
grep -E "error|fail|warn" logfile.log    # → use extended regex for multiple patterns
grep -c "timeout" logfile.log            # → count number of matches


# 72. ------ Stream editor for modifying text (sed) ----------

sed 's/error/issue/' logfile.log         # → replace first occurrence of 'error' with 'issue' on each line
sed 's/error/issue/g' logfile.log        # → replace ALL occurrences globally
sed -i 's/old/new/g' config.txt          # → replace text in-place (edit file directly)
sed -n '1,5p' logfile.log                # → print lines 1 through 5
sed '/DEBUG/d' logfile.log               # → delete lines containing 'DEBUG'
sed -i '/^#/d' config.txt                # → remove all comment lines starting with '#'
sed -e 's/^/PREFIX: /' logfile.log       # → add prefix at start of each line


# 73. ------ Text filtering and field extraction using awk ----------

awk '{print $1}' logfile.log             # → print first column of each line
awk '{print $1, $3}' logfile.log         # → print first and third columns
awk -F: '{print $1}' /etc/passwd         # → use ':' as field separator
awk '/error/ {print $2}' logfile.log     # → print second field only when line contains 'error'
awk '{sum += $2} END {print sum}' data.txt  # → calculate sum of values in second column
awk 'NR==1,NR==5' logfile.log            # → print lines 1 to 5
awk 'length($0) > 80' logfile.log        # → print lines longer than 80 characters
awk '{count[$1]++} END {for (word in count) print word, count[word]}' file.txt  # → word frequency count
