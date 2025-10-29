# ======================================================
# 🌐 NETWORKING & CONNECTIVITY COMMANDS
# ======================================================

# 56. ------ Check network connectivity to a host ----------

ping google.com                 # → send ICMP packets to test network connection
ping -c 5 google.com            # → send only 5 packets
ping -i 0.5 8.8.8.8             # → send packets every 0.5 seconds


# 57. ------ Display network interfaces and IP configuration ----------

ifconfig                        # → show all network interfaces (deprecated, use ip addr)
ifconfig eth0                   # → show details of a specific interface
ip addr show                    # → modern replacement for ifconfig
ip link show                    # → show all network interfaces (UP/DOWN state)


# 58. ------ Display or manage routing table ----------

route                           # → show routing table (old command)
ip route show                   # → display current routes (modern alternative)
ip route add default via 192.168.1.1  # → add default gateway
ip route del default             # → remove default route


# 59. ------ Trace path packets take to destination ----------

traceroute google.com           # → show route packets take to reach a host
tracepath google.com            # → similar to traceroute, does not need root


# 60. ------ Check open network ports and connections ----------

netstat -tulnp                  # → show active TCP/UDP ports with process names (old)
ss -tuln                        # → modern replacement for netstat
ss -lntp                        # → list listening ports with associated processes
sudo lsof -i :80                # → show process using port 80


# 61. ------ DNS lookup and troubleshooting ----------

nslookup google.com             # → query DNS for IP of a domain
dig google.com                  # → detailed DNS query
dig +short google.com           # → simplified DNS result
host google.com                 # → another quick DNS lookup tool
whois google.com                # → show domain registration details


# 62. ------ Test network connectivity and ports ----------

telnet example.com 80           # → test connection to host on specific port
nc -zv example.com 22           # → check if port 22 (SSH) is open using netcat
nc -lvp 8080                    # → start a listener on port 8080 (useful for testing)


# 63. ------ Download files or test URLs ----------

wget https://example.com/file   # → download file from a URL
wget -c https://example.com/file.zip   # → resume interrupted download
curl https://example.com        # → fetch webpage or API response
curl -I https://example.com     # → show HTTP headers only
curl -O https://example.com/file.tar.gz  # → download file with original name
curl -u user:pass https://example.com/api  # → send HTTP request with authentication


# 64. ------ Show or change hostname ----------

hostname                        # → show current system hostname
hostnamectl set-hostname server1  # → set new system hostname


# 65. ------ Display or modify ARP table ----------

arp -n                          # → show ARP cache (IP ↔ MAC mapping)
ip neigh show                   # → modern version of ARP
arp -d 192.168.1.5              # → delete a specific ARP entry


# 66. ------ Show cable/connection status ----------

ifplugstatus                    # → check if network cable is plugged in and active
ethtool eth0                    # → show interface link speed and duplex settings


# 67. ------ Network scanning and analysis ----------

sudo nmap -sP 192.168.1.0/24    # → ping scan to discover live hosts
sudo nmap -p 22,80 192.168.1.10 # → scan specific ports
sudo nmap -A example.com        # → detect OS and services (detailed scan)
sudo nmap -Pn 192.168.1.10      # → skip ping check (for firewalled hosts)


# 68. ------ Monitor command output continuously ----------

watch -n 2 ip addr show         # → re-run a command every 2 seconds
watch -d netstat -tulnp         # → highlight changes in open connections


# 69. ------ Manage firewall rules (iptables) ----------

sudo iptables -L                # → list all current firewall rules
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT  # → allow SSH port 22
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT  # → allow HTTP port 80
sudo iptables -A INPUT -j DROP  # → block all other incoming traffic
sudo iptables -D INPUT 2        # → delete rule number 2
sudo iptables-save > /etc/iptables/rules.v4  # → save rules permanently


# 70. ------ Display system’s IP routing and configuration summary ----------

ip a                            # → show IP addresses
ip r                            # → show routing table
ip link                         # → show link-level info
