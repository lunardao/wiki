# Virtualbox and Whonix installation

## Download and installation

- [Download Virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads)  
- if it's a .deb package, install by:

```sh
sudo dpkg -i <name of package>
```
- Create a folder called Virtualbox VMs in home (or any other selected location)

- [Download Whonix](https://www.whonix.org/wiki/Download)  
- Follow the guide in point 3 'import Whonix into Virtualbox' (select *expand*) to [add whonix to Virtualbox](https://www.whonix.org/wiki/VirtualBox/CLI).  

## Whonix setup in Virtualbox

- Open *Oracle Virtualbox* via menu or by typing *virtualbox* in command line.  
- Click on *'Whonix gateway'* + *'start'*  --> always start Gateway before starting Whonix workstation.  
- Select Whonix at startup.  
- *Whonix setup wizard* - accept *licence terms* ('Important Information About This Operating System').  
- When prompted to select if the connection should be via Tor or not: select *'connect'*.  
- There is a default user and password, which will de displayed the first time opening terminal:
    - 'default user account': user
    - 'default password': changeme
    - To change the password:

    ```sh
    sudo passwd
    ```
    - Type *changeme*
    - When prompted: <new password>

- Update the system:

```sh
sudo apt-get-update-plus dist-upgrade
```
- Select *'Whonix workstation'* + *'start'
- Accept licence agreement + finish.
- Open terminal.
- Change password like above if wanted
- Update:

```sh
sudo apt-get-update-plus dist-upgrade
```
- Click on x in the upper right corner to close the window. First *Gateway*, select 'power off' when prompted. repeat for *Workstation* window.

- Select *Whonix gateway* + *Start*.
- Select *Whonix/GNU* + Enter.
- Select *Whonix workstation* + *Start*.
- Select *Whonix/GNU* + Enter.
- Now everything is set up and ready to use.

**Check IP address**

- To check the IP address:

```sh
curl ip.me
```
- This will show the current IP address. On ie. [https://ipleak.net/](https://ipleak.net/) you can check the location of this IP.  
- If you check you IP address at pages like [https://www.whatismyip.com/](https://www.whatismyip.com/) no information will be shown.
- Everytime a new terminal is opened in Whonix, the IP address changes.

## Useful applications on Whonix

- [Tor browser](https://www.torproject.org/download/)
- [Electrum](https://electrum.org/#home) (BTC wallet)
- [Monero wallet](https://www.getmonero.org/)
- [KeepassXC](https://keepassxc.org/)
- [vlc](https://www.videolan.org/vlc/)
- [gpa](https://www.gnupg.org/related_software/gpa/) - pgp encryption key generation

## Related materials

- [Importance of anonymity](https://www.whonix.org/wiki/Anonymity)  
- [Surveillance](https://www.whonix.org/wiki/Surveillance_Capabilities)  
- [Data collection techniques](https://www.whonix.org/wiki/Data_Collection_Techniques)