# tau

There are plenty of task manager apps running in the web-browser, on Android etc. LunarDAO seeks for solutions which are open-source (GPL), distributed, working and preferably minimalistic.

Searching for task manager that fits these parameters within lunarpunk movement we found tau. The first version of tau was centralized and DarkFi has now developed a [decentralized tau](https://darkrenaissance.github.io/darkfi/misc/tau.html).

## Installation & configuration

- Open terminal and navigate to where the repository will be cloned. If there is a need to install git --> check [this guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).  

- Clone repository.

```sh
git clone https://github.com/darkrenaissance/darkfi 
```
- Go to darkfi folder.

```sh
cd darkfi
```
- Compile & install.

```sh
make BINS="taud tau"
```
```sh
sudo make install "BINS=taud tau"
```

- Run taud (should work with just taud, but if it doesn't, in darkfi folder, run './taud').

```sh
taud
```

- The first time it's run, a config file is creates. This file can be founds in '.config/darkfi' and is called taud_config.toml.

```sh
cd ~/.config/darkfi
```

- The original .toml file (which comes with cloning the repo) looks like [this](https://github.com/darkrenaissance/darkfi/blob/master/bin/tau/taud_config.toml).

- There are a couple of things that needs to be changed:
    - Seeds should be uncommented and this is the needed string:  
    `yaml
    seeds=["tls://dasman.xyz:24441"]
    `
    - Add the string for workspaces to be used. It looks like this:
    `yaml
    workspaces = ["darkfi:E8ChX8X1Y578LZYxazCjVucWKAnD4xs6WQre3mWdBtHq"]
    `
    - Generate a string for a workspace. Don't forget to name the workspace.

    ```sh
    taud --generate
    ```
    - Copy the string and insert in `yaml workspaces = ["<here>"]. If there are multiple workspaces, they need to be separated by comma.

    - Uncomment: 

      ```yaml rpc_listen, datastore, nickname & transports ```

    - Remember that when changed have been made to configuration, start a new terminal window for the changes to take effect or use `yaml source <file>`.

- Run taud deamon as written below (or ~/darkfi/.taud whatever the correct path is).

```sh
taud
```

- In another window run tau (or ~/darkfi/.tau, check path).

```sh
tau
```
- It will be empty but should show.

```yaml
Workspace: <name of workspace>
---------------
```

- It is possible to generate an many workspaces as wanted as described above.  
- The workspaces will have separated task lists, which is convienient if working on several projects. 

## Usage

- Switching in between workspaces:

```sh
tau switch <name of workspace>
```

- For further information on tau usage, check [DarkFi docs](https://darkrenaissance.github.io/darkfi/misc/tau.html).

## tau bot

tau as a task manager work well with ircd. The tau bot norifies on the creation of tasks as well as submitted comments, when started, paused or stopped.

The code for the new tau-bot is in: [darkfi/bin/darkirc/script/bots/taubot.py](darkfi/bin/darkirc/script/bots/taubot.py)

- Open taubot.py ie. with vim.

```sh
vim taubot.py
```

- Change default port to 6667.

```yaml
parser.add_argument('--port', default=6667, help='port of the IRC server') 
```

- Add a nickname to the bot if wanted.

```yaml
parser.add_argument('--nickname', default="this is where the nickname is entered", help='bot name')
```
- Add the channel to which the bot will provide notifications about tasks.

```yaml
parser.add_argument('--channel', default="#this is where the ircd channel name is entered", action='append', help='channel to join')
```

**The following need to be running**

Make sure to restart everything after having made changes.

- ircd deamon  (if in darkfi folder --> ./ircd)
- weechat 
- taud deamon  (./taud)
- tau bot  (python3 taubot.py)
- tau client

Check our guide on [how to install and use ircd and weechat](./ircd.md).

    




