# Flokinet VPS with git, ircd and tau deployment

**Flokinet**

- Is focused on supporting freedom of speech, free press and whistleblower projects.  
- Do not ask for personal information and will never give third parties access to any data.  
- Flokinet provide free whois protection for user domains (with exception of some domains where it is not possible, .de for example).  
- Is encouraging the development of websites for whistleblowers.  
- they are running several TOR nodes (exit and relay) to donate bandwidth and sugegsts that users should use Tor to anonymously get in contact. 

**Buy VPS service on Flokinet**

1) Register at [Flokinet](https://billing.flokinet.is/register.php).  
2) Go to *Services* --> *Order new services*  
3) Select *Virtual private serve* (There are options Iceland, Romania, Finland & Netherlands)  
4) Select which VPS --> how much RAM, how many cores, how much GB etcetera.  
5) Select *Order now*  
6) Choose to pay for a month, annually, biannually or whatever fits.  
7) Enter *Hostname* --> This can be any chosen name  
8) *Choose your OS* --> If there is no previous experience with this, or no specific preference, select ie. *debian 11*. 
9) Enter a chosen *User* name  
10) Enter chosen *Password*
11) Provide the ssh pubkey string. If there is none, create a key by typin this in terminal:

```sh
ssh-keygen -f ~/.ssh/{SELECTED_NAME}
```

To see the key, in terminal:

```sh
cat ~/.ssh/{SELECTED_NAME}.pub
```

- Select and copy (ctrl + shift + C)  
- Paste it in the *SSH public key* field on Flokinet web page.  
- *VM template* remain debianbullseye (if selected OS id debian 11).  
12) Continue and select payment method.  
- Flokinet is fast in deploying the VPS and this should be done the same day.  
- An email will be send to the user, to provide information on which steps are needed. If OS was selected when purchasing the service this should already be installed. If it's not, or if there is a wish to change OS, go to *Services* --> *My services* and in the left side menu select *Reinstall*.   
- If there is any need for support, go to *Support* --> *Tickets* to send a request for support or ask questions.

**On admin VPS account**

## Basic setup of VPS

13) Open terminal  
14) Type the following to see that the VPS is working/responding:

```sh
ping <IP address>
```

- The IP address can be found in *Services* --> *My services* --> *Server information*.  
15) Define which key to login with:  

```sh
ssh -i ~/.ssh/{SELECTED_NAME} user@ip_address
```

- {SELECTED_NAME} is the name that was chosen for the ssh key. If unsure, check what keys there are, in terminal go to the ssh folder:

```sh
cd ~/.ssh
```

- To see what the folder contains:

```sh
ls
```

- The public key should end with .pub (.pub menas that it's the public key. Never share the private key with anyone). Note down the name of the key and go back to point 3.

>*User* is the user name chosen when purchasing the service. This can be found on Flokinet --> *Services* --> *My services* --> *Additional information*.

16) When prompted to type *Password*, enter the password chosen when purchasing the product.

- In terminal we normally see:

>name@selectednameofcomputer

- This information was chosen when installing the OS.  
- When logged in to the VPS, this name will change and instead the user will see:

>user@domain

**VPS update & upgrade**

17) When completed the login to the VPS, update and upgrade the system:

```sh
sudo apt-get update
```

```sh
sudo apt-get upgrade
```

18) Go to the ssh deamon config:

```sh
vim etc/ssh.sshd
```

- This might be in a different folder, and called something slighty diffent, such as '/etc/ssh/sshd_config'.  
- Change *password authentication yes* to *password authentication no*.  
19) Change *challengeresponseauthentication yes* to *challengeresponseauthentication no* (no is probably already the default, but check it anyway).  
20) Restart the ssh deamon to apply the new settings.  

```sh
sudo systemctl restart sshd.service
```

21) Install Git.

```sh
sudo apt-get install git
```

**Creating new user**
 
22) Create a new user (to not use root) which serve as the main account for login and usage.

```sh
sudo useradd -m <newuser> -s /bin/bash
```

- Enter a password for the new user.

```sh
sudo passwd <newuser>
```

- Change owner to newuser:

```sh
sudo chown newuser:newuser .ssh
```

```sh
sudo cp _R /home/seed/.ssh /home/newuser.ssh
```

- Add new_user information to local config file.

```sh
vim .ssh/config
```
- This is the format.

```yaml
Host call_it_as_you_wish_variable
        Hostname {server_ip}
        User {new_user}
        IdentityFile ~/.ssh/{pub_key}
```
- It's also possible to add 'Port' to the config if there is a wish to specify.

- Open a new terminal and login to the new user account:
 
 ```sh
 ssh <hostname>
 ```

 - Enter password when requested.

**On newuser VPS account**

**Adding ssh keys to VPS**

- Now it's possible to add more ssh pubkeys to the VPS. Collect the ssh pubkey string of everyone that need access to the VPS.

```sh
cd ~/.ssh
```

```sh
vim authorized_keys
```

- Add the pubkey-string of users, who should have access, to this file. At the end of the string, add a name for the pubkeys to know which one is which if they need to be removed at a later point. Make sure there is a whitespace between the key string and the name.

## Creating git repo on VPS

23) Initialize new bare repository (follow convention of adding .git in the name of folder)

```sh
git --bare init {new_repo_name}.git
```

24) On local computer, clone the repo. 

```sh
cd ~/src
```
- Clone repository.

```sh
git clone {hostname}:{newuser}/{new_repo_name}.git
```

25) Set the new username and email which will be displayed in the repo (email can be made up like {name@domain})

```sh
git config user.name "{NAME}"
```
```sh
git config user.email "{NAME}@{SOMETHING}"
```

26) On VPS, install [tmux](https://www.redhat.com/sysadmin/introduction-tmux-linux) (optional, but recommended).

```sh
sudo apt-get install tmux
```

27) Install pip.

```sh
sudo apt-get install pip
```
28) Create a folder for cloned repos, {folder_name}.

```sh
mkdir {folder_name}
```
```sh
cd {folder_name}
```

## tau setup

29) On VPS - Clone tau repository (github cloning. Note the difference with cloning repo on our own server). 

```sh
git clone https://github.com/narodnik/tau2
```

30) Go to repo folder.

```sh
cd ~/{folder_name}/tau2
```

31) Export path.

```sh
export PATH="$PATH:/home/user/.local/bin"
```

32) Install dependencies.

```sh
pip install -r requirements.txt
```

33) Create a config folder.

```sh
mkdir ~/.config
```

34) In config folder, create a folder called 'tau'.
```sh
mkdir ~/.config/tau
```

35) Copy the example toml file. Call it 'tau.toml'.

```sh
cp tau.sample.toml ~/.config/tau/tau.toml
```

36) Generate a secret.

```sh
 python3 generate_secret.py
```

37) Open tau.toml.

```sh
vim  ~/.config/tau/data/tau.toml
```

38) In the tau.toml.

- Change server information to the IP address (On Flokinet in *Services* --> *My services* --> Selecting VPS the IP address will be displayed)
- Select name (any name)  
- Change the secret to the one generated in point 36.

***Note 1:*** To learn commands in vim, check [this](https://phoenixnap.com/kb/vim-commands-cheat-sheet).

***Note 2:*** [Tmux](https://tmuxcheatsheet.com/) is very useful as it is possible to use ctrl + b + c to open a new pane. It makes it easy to have a pane for installations, a pane for the tau deamon etcetera.

39) Run deamon (own pane). Make sure to be in tau2 folder.

```sh
python3 server/main.py
```

40) Run client (another pane).

```sh
python3 client/main.py
```

41) New pane. Start tau.

```sh
python3 client/main.py
```

42) The first task need to be added while on the VPS. Afterward this can be set up locally and all usage will be locally. Check [https://github.com/narodnik/tau2](https://github.com/narodnik/tau2) guide on how to use tau and add tasks. Below is an example. The repository mentioned above includes more options.

```sh
python3 client/main.py add NameofTask @NameOfresponsible
```

**Locally**

43) In terminal.

```sh
cd ~/.config/tau
```

44) Create a new toml file.

```sh
vim tau.toml
```

45) In this config paste the information from the server (the info that is in ~/.config/tau/tau.toml), save & exit (In vim --> esc + : + x):

>username="name"
shared_secret="24d4aea741af29fhgjkgfhi1978a5156add7d0649cc1de1104823be3aaf1e060686775262"
server = {ip address}

**On admin VPS account**

## Deploy ircd

46) In the admin account (not newuser, the one which was initially setup on Flokinet. Open a new terminal and have the admin account running in one terminal and the newuser account in another).

47) Create a new folder to clone repositories.

```sh
mkdir {new_folder}
```

48) Go to this folder.

```sh
cd ~/{new_folder}
```

49) Clone DarkFi's github repository.

```sh
git clone https://github.com/darkrenaissance/darkfi 
```

50) Install [Rustup](https://www.rust-lang.org/tools/install) and other dependencies.

```sh
sudo apt-get update
```
```sh
sudo apt-get install -y git make jq gcc pkg-config libmpg123-dev
```
```sh
rustup target add wasm32-unknown-unknown
```

**Compile ircd**

```sh
make BINS=ircd
```

```sh
sudo make install BINS=ircd
```

51) Install weechat.

```sh
sudo apt install weechat
```

**In newuser account on VPS**

*Note: Below is assuming the usage of tmux. When tmux is installed it can be started simply by entering 'tmux' + enter*

52) Open a new pane with ctrl + b + c.

53) Start ircd deamon which will auto-create config file. 

```sh
cd ~/{new_folder}/darkfi
```

```sh
./ircd
```
54) Go to the config file.

```sh
vim ~/.config/darkfi/ircd_config.toml
```
- To generate secrets for chat rooms and add channels to autojoin, see the info on [ircd](https://wiki.lunardao.net/ircd.html) on the wiki, [DarkFi's ircd guide](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html) or [serinko's guide](https://wiki.lunardao.net/ircd.html) on tau server deployment which also includes installation of ircd.

55) Restart ircd deamon: ctrl + c to stop the deamon and then re-entering.

```sh
./ircd
```

56) Open a new pane in newuser terminal (The VPS) and run weechat.

```sh
weechat
```
57) In weechat, write the following one by one and press enter in between each.

```sh
/server add darkfi localhost/6667 -autoconnect
```
```sh
/save
```
```sh
/quit
```

## Git notifier

58) On newuser VPS - Open a new pane for tau bot.

59) Go to tau2 folder.

```sh
cd ~/src/tau2
```

60) Open tau bot program.

```sh
vim bot/notifier_bot.py
```
- Change the following:

**In line 24:** change default value of port from 11066 to the one ircd runs on which is 6667.

**In line 26:** switch default channel to the channel the tau bot is going to be deployed on ('#nameofchannel'). For example, if in the local ircd a channel secret was generated, and a channel called '#utopia' was added to autojoin --> the same name need to be added in the tau notifier for this to work. Otherwise tau notifier do not know which channel will have the notifications.

61) Save & exit (in vim: esc + : + x)

62) Run tau daemon. If it was already running, restart.

```sh
python3 server/main.py
```
63) Create a new pane for tau. Add tau alias to .bashrc.

```sh
echo "alias tau=~/src/tau2/client/main.py" >> ~/.bashrc
source ~/.bashrc
```

64) Run tau. Note that the name to run tau depends on what each user has submitted. In the example above it is written 'tau=' and is a variable. If the user instead write 'icecream=' the command to run tau will be icecream. tau is the same as running 'python3 ~/{folder_name}/tau2/client/main.py'. Now it is enough to enter the alias to run tau.

```sh
tau
```

65) Create a task in tau. The first task need to be made on the VPS or it will not work later locally.

```sh
tau add test_task
```
- To see the task that was created. To check specific task and view additional information, enter 'tau {number}', to see tasks assigned to a specific person 'tau show @name'

```sh
tau
```

66) Run tau notifier/bot.

```sh
python3 ~/src/tau2/bot/notifier_bot.py --nickname [NAME]
```

- In case you did not change default channel before, kill the program and specify.

```sh
python ~/src/tau2/bot/notifier_bot.py --nickname [NAME] --channel ["#channel_name"]
```
Check [serinko's guide](https://github.com/serinko/python_fun/blob/master/notes/tau_server_deployment.txt) on tau server deployment, specifically lines 115-143 which are about the tau notifier.

These are the panes which need to be constantly running:

- ircd deamon  
- tau deamon  
- tau notifier

It is also good to have panes for tau client (where it's possible to add, modify and remove tasks) and weechat. 

- When exiting the VPS to instead use the local machine, with tmux use ctrl + b + d which detatches from the session. After this, enter exit.

- When login back in to the VPS at another time, simply type.

```sh
ssh {host}
```

```sh
tmux
```

```sh
tmux attach-session
```

- With this the previously detached session will be attached again and all the panes from before will be visible.