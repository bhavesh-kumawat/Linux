# ======================================================
# 🔐 FILE PERMISSIONS & OWNERSHIP COMMANDS
# ======================================================

# ======================================================
#| **Octal Code** | **Symbolic** | **Meaning**                                                    |
#| -------------- | ------------ | -------------------------------------------------------------- |
#| `777`          | `rwxrwxrwx`  | Everyone can read, write, and execute            |
#| `755`          | `rwxr-xr-x`  | Owner full access; others read + execute (common for scripts)  |
#| `700`          | `rwx------`  | Only owner has access                                          |
#| `644`          | `rw-r--r--`  | Owner can read/write; others can only read (default for files) |
#| `600`          | `rw-------`  | Owner read/write only (secure for config files)                |
#| `640`          | `rw-r-----`  | Owner read/write; group read-only                              |
#| `664`          | `rw-rw-r--`  | Owner/group can read/write; others read-only                   |
# ======================================================


# 42. ------ Show file permissions, ownership, and details ----------

ls -l                           # → list files with permissions, owner, group, size, and date
ls -lh                          # → list files with human-readable sizes
ls -la                          # → show all files including hidden ones (starting with .)
ls -ld directory_name            # → show permissions of a directory itself (not its contents)


# 43. ------ Change file permissions ----------

chmod 755 script.sh             # → owner (rwx), group (r-x), others (r-x)
chmod 644 file.txt              # → owner (rw-), group (r--), others (r--)
chmod u+x deploy.sh             # → add execute permission for the user (owner)
chmod g-w config.yaml           # → remove write permission from group
chmod o+r report.txt            # → add read permission for others
chmod -R 755 /var/www/html      # → recursively set permissions for all files/subfolders


# 44. ------ Change file ownership ----------

sudo chown devops file.txt      # → change owner of a file
sudo chown devops:devteam file.txt  # → change both owner and group
sudo chown -R ubuntu:ubuntu /opt/app  # → change ownership recursively for directory


# 45. ------ Change file group ----------

sudo chgrp devteam file.txt     # → change group ownership of file
sudo chgrp -R webadmins /var/www/  # → change group recursively


# 46. ------ View or set default permissions (umask) ----------

umask                           # → show current default permission mask
umask 022                       # → set default mask (new files: 644, new dirs: 755)
umask 027                       # → stricter default mask (new files: 640, new dirs: 750)
umask -S                        # → show mask in symbolic format (u=rwx,g=rx,o=rx)

# 💡 Default behavior:
# - New files start with 666 (rw-rw-rw-)
# - New directories start with 777 (rwxrwxrwx)
# - umask subtracts bits from those defaults
#   Example: umask 022 → files 644, directories 755
