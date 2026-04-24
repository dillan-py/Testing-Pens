# VNC SERVER UNAUTHENTICATED ACCESS

## Solution:
Disable the No Authentication security tye / Update VNC to the latest version.
---
### After you have noticed a vnc port running on a server, apply another scan using nmap's NSE scrip:
```bash
sudo nmap -p 5901 --script vnc-info <target_ip>
```
## Results:
```bash
PORT     STATE SERVICE
5901/tcp open  vnc-1
| vnc-info:
|   Protocol version: 3.8
|   Security types:
|     None (1)
|_  WARNING: Server does not require authentication

Nmap done: 1 IP address (1 host up) scanned in 0.64 seconds
```
- This means we can enter into a session with the vnc server using the command vncviewer or gvncviewer: **
```bash
gvncviewer <targetip>
```
- This should open up a session without a password, however if the vnc server is running on a different port you can apply it like this: **
```bash
gvncviewer <targetip>:<port>
```
Once you are in, it will open a GUI session, gives you the option to shutdown, reboot and reset it etc. If a person is logged in it will show their display however without knowing the password or fruther exploitation you want be able to gain further access.
<img width="719" height="112" alt="image" src="https://github.com/user-attachments/assets/6eaae47e-cc4e-43e7-bd27-6d196c56ccfd" />

> Go to page 34 in this Pen Test report, this is what it looks like in a real scenario:

https://github.com/juliocesarfort/public-pentesting-reports/blob/master/ProCheckUp/CHECK-1-2012.pdf
