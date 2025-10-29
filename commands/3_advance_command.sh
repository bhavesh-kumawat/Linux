# 23. ------ Login to another user or system ----------
echo "23. ------ Login to another user or system ----------"

login username                 # → log in as another user (used on local console)
su - username                  # → switch user with full environment
ssh user@hostname              # → log in to a remote system via SSH
logout                         # → log out of current session


# 24. ------ Check disk usage ----------
echo "24. ------ Check disk usage ----------"

df                             # → show disk usage in 1K blocks
df -h                          # → human-readable format (GB, MB)
df -T                          # → show filesystem type
df -i                          # → show inode usage (file count info)

du -sh *                       # → show size of each file/folder in current dir
du -h /var/log                 # → show size of specific directory


# 25. ------ View running processes ----------
echo "25. ------ View running processes ----------"

ps                             # → show your current shell’s processes
ps -e                          # → show all processes
ps -ef                         # → full-format listing with users, PIDs, etc.
ps aux                         # → detailed list of all processes (common form)
ps -u username                 # → show processes owned by specific user


# 26. ------ Real-time process monitoring ----------
echo "26. ------ Real-time process monitoring ----------"

top                            # → display running processes live (CPU/mem usage)
htop                           # → improved version (if installed)
# Inside top:
#  q → quit
#  k → kill process
#  M → sort by memory
#  P → sort by CPU


# 27. ------ Show which processes are using a file or port ----------
echo "27. ------ Show which processes are using a file or port ----------"

fuser filename                 # → show which process is using a file
fuser -v /home/user/file.txt   # → verbose output
fuser -k /dev/sdb1             # → kill all processes using a device or file
fuser -n tcp 80                # → show process using TCP port 80


# 28. ------ Kill (terminate) processes ----------
echo "28. ------ Kill (terminate) processes ----------"

# kill PID                       # → kill process by its ID
# kill -9 PID                    # → force kill process (SIGKILL)
# pkill processname              # → kill by process name
# killall processname            # → kill all processes with that name


# 29. ------ Display memory usage ----------
echo "29. ------ Display memory usage ----------"

free                           # → show memory usage in KB
free -m                        # → show memory usage in MB
free -h                        # → human-readable (MB/GB)
# Columns:
#  total | used | free | shared | buff/cache | available


# 30. ------ Run command immune to hangups (background tasks) ----------
echo "30. ------ Run command immune to hangups (background tasks) ----------"

nohup command &                # → run command that keeps running after logout
nohup ./script.sh &            # → run script in background safely
# Output is written to nohup.out unless redirected.


# 31. ------ Display system performance and statistics ----------
echo "31. ------ Display system performance and statistics ----------"

vmstat                         # → show CPU, memory, and process stats
vmstat 2 5                     # → update every 2 seconds, show 5 reports
vmstat -s                      # → show event counters and memory statistics
# Fields:
#  r (running processes)
#  b (blocked processes)
#  swpd (swap used)
#  free (idle memory)
#  si/so (swap in/out)
#  us/sy/id/wa (CPU usage)
