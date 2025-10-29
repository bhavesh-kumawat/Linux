# ======================================================
# 🖥️ SYSTEM INFORMATION COMMANDS
# ======================================================

# 32. ------ Display system and kernel information ----------

uname                           # → show kernel name
uname -a                        # → show all system information (kernel, version, architecture)
uname -r                        # → show kernel release version
uname -m                        # → show machine hardware name (e.g., x86_64)


# 33. ------ Show system uptime ----------

uptime                          # → show how long the system has been running and load averages


# 34. ------ Display current date and time ----------

date                            # → show current date and time
date +"%Y-%m-%d %H:%M:%S"       # → custom date format
sudo date -s "2025-10-29 10:00:00"  # → set system date/time (admin only)


# 35. ------ Show logged-in users and user info ----------

who                             # → show all logged-in users
whoami                          # → show your current username
id                              # → show user ID, group ID, and group memberships
which command                   # → show full path of a command (e.g., which ls)


# ======================================================
# ⚙️ SYSTEM MANAGEMENT COMMANDS
# ======================================================

# 36. ------ Superuser privileges ----------

sudo command                    # → run command with root privileges
sudo -i                         # → open a root shell
sudo !!                         # → repeat last command as sudo


# 37. ------ System shutdown and reboot ----------

shutdown now                    # → shutdown immediately
shutdown -h now                 # → halt system now
shutdown -r now                 # → reboot immediately
shutdown +10 "System rebooting in 10 minutes"  # → schedule shutdown
reboot                          # → restart system instantly
halt                            # → stop all processes and halt system


# ======================================================
# 📦 PACKAGE MANAGEMENT (APT)
# ======================================================

# 38. ------ Package management using APT (Debian/Ubuntu) ----------

sudo apt update                 # → refresh package lists
sudo apt upgrade                # → upgrade installed packages
sudo apt install packagename    # → install a package
sudo apt remove packagename     # → uninstall a package
sudo apt autoremove             # → remove unnecessary packages
sudo apt list --installed       # → list installed packages
sudo apt search keyword         # → search for a package


# ======================================================
# 👥 USER & GROUP MANAGEMENT
# ======================================================

# 39. ------ User account management ----------

sudo useradd username           # → create a new user
sudo useradd -m username        # → create user with home directory
sudo passwd username            # → set or change user password
sudo userdel username           # → delete user account
sudo userdel -r username        # → delete user and their home directory


# 40. ------ Switch users ----------

su - username                   # → switch to another user (with full environment)
su                              # → switch to root user
exit                            # → return to previous user


# 41. ------ Group management ----------

sudo groupadd groupname         # → create new group
sudo groupdel groupname         # → delete group
sudo gpasswd groupname          # → manage group passwords (rarely used)
sudo gpasswd -a user groupname  # → add user to group
sudo gpasswd -d user groupname  # → remove user from group
sudo gpasswd -M user1,user2 groupname  # → assign multiple users to a group


# ======================================================
# 🧹 MISCELLANEOUS UTILITIES
# ======================================================

clear                           # → clear the terminal screen
history                         # → show previously used commands
echo "text"                     # → print text on screen
