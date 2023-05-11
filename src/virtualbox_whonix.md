# Virtualbox and Whonix installation

[Virtualbox](https://www.virtualbox.org) is a virtual machine (VM). This functions like a computer in the computer, which allows the user to run the regular OS on the computer, while have several entirely different OS in the VM. Some programs might not be accessible with the current setup or there might be privacy reasons for using a VM. A VM is isolated from the rest of the computer, this compartmentalization separates activity, IP address and metadata from the rest of the computer. It allows for testing of applications and making installations instead of risking the regular system to experience errors that are difficult to fix. [Tails](https://tails.boum.org/) is a portable operating system and often compared with VMs. It is a very useful tool, though it is not possible to use alongside the regular OS, and instead the user boot into Tails via a USB at startup. A VM therefore gives the advantage of being able to engage in different setups without having to switch in between or be limited to two; the regular OS and Tails. 

[Whonix](https://www.whonix.org) is an operating system based on linux distribution.

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

**Virtualbox disk encryption**

It's possible to set a password that the user must enter to start Whonix.

- Go to [https://www.virtualbox.org/wiki/Downloads?ref=infosecarticles.com](https://www.virtualbox.org/wiki/Downloads?ref=infosecarticles.com) and download the extention package.  
- In terminal, go to folder where the package was downloaded.  
- Enter (replace the file name with thename of the downloaded file):

```sh
sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
```

- Open Virtualbox.

```sh
virtualbox
```

- Select the instance and click on *Setting*.  
- In *General, go to *Disk encryption*.  
- Toggle *Enable disk encryption*.  
- Set *Disk encryption cipher* to AES-XTS256-PLAIN64.  
- Enter password and OK.

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
- [Vulners](https://vulners.com/mageia/MGASA-2023-0024)