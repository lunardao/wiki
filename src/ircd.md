# Chat - p2p IRC (ircd & weechat)

For the purpose of a quick and instant chat or communication which is 100% anonymous and if chosen private, especially for coordination of smaller groups (or committees - read [governance](./governance.md)), we use ircd - a peer-to-peer IRC chat, built by [DarkFi](dark.fi). ircd supports group chats (open and private) as well as DMs. 

Weechat is a client most use (runs the chat in terminal), although other IRC clients will work as well.

If the setup is done from scratch, also make sure to install git.

`sudo apt install git`

- Clone DarkFi repository.

`git clone https://github.com/darkrenaissance/darkfi`

`cd darkfi`

## Installation

***Note:*** This installation guide is for Linux based on Debian. For other OS, check [here](https://darkrenaissance.github.io/darkfi/index.html) to see which dependencies are needed.

- ircd runs on v0.4.1 (tag) for now while taud for example run on master (branch). On master default is rustup nightly while on v0.4.1 default is rustup stable. [Here](https://hackernoon.com/top-differences-between-tags-and-branches-in-git-you-must-know-49m33jk) is more info on the difference between branches and tags.  

**Open your terminal and navigate to the directory where Darkfi repository will be cloned and follow the steps below.**

- Begin by installing [rustup](https://rustup.rs/) & cargo.

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

- Install dependencies & update.

1) `sudo apt-get update`

2) `sh contrib/dependency_setup.sh`

- The most updated information can be found in [DarkFi's installation guide](https://darkrenaissance.github.io/darkfi/index.html#build).  
*Note:* `git checkout v0.4.1` mean that currently it's on v0.4.1, which is a tag and `git checkout master` mean it's on master. 

`git checkout v0.4.1`

`rustup target add wasm32-unknown-unknown`

**Compile & install ircd**

- In DarkFi folder, compile ircd.

`make ircd`

*Note:* If there is an error when compiling, it's likely because dependecies are missing. The cmd above should install everything. However, sometimes troubleshooting through manual installations is necessary. Go to [DarkFi docs](https://darkrenaissance.github.io/darkfi/index.html#build) and install each separately like so "sudo apt install make", "sudo apt install gcc" etcetera.

**Run ircd**

- While in darkfi folder --> The following command starts ircd daemon, the chat works only when this daemon is running, don't turn it off.

```sh
./ircd
```

- The first time runnning `./ircd` a configuration file will be created. It is located in '.config/darkfi'. Open it ie. with vim in terminal.

```sh
vim .config/darkfi/ircd_config.toml
```
- Read from 'New Rooms Configuration' to see what & how to add information in the configuration file to join chat rooms, generate secrets for new ones etcetera.

**Install, start & configure weechat**

- Open a new tab in terminal.

- Install weechat & dependencies.

`sudo apt-get install -y git make jq vim weechat libssl-dev`

`sudo apt-get install weechat-curses weechat-plugins`

- In case `libssl-dev` returned error run:

`sudo apt-get install libmpg123-dev`

- Open a new terminal window and start Weechat:

```sh
weechat
```

Connect weechat to the ircd daemon, save and restart the client. To do this, in Weechat prompt line enter these commands:

`/server add darkfi localhost/6667 -autoconnect`

`/save`

`/quit`

## Usage

**ircd**

In case the computer was restarted or connection lost, in darkfi folder enter:

```sh
./ircd
```

Keep the daemon running in one terminal window and use weechat in another.

**Start Weechat**

```sh
weechat
```

**Weechat commands**

Weechat allows for a wide range of custom configuration, see [Weechat documentation](https://weechat.org/files/doc/stable/weechat_quickstart.en.html). Few useful commands are listed below.

Change nick:
```sh
/nick {NEW_NAME}
```
Quit chat room

```sh
/quit
```

Quit Weechat

```sh
/exit
```

See help
```sh
/help
```
Change chat rooms by *alt + arrow up/down* **or** *alt + channel_number*

## New Rooms Configuration

The information on how to join chat rooms or create new is included in the ircd config file in `~/.config/darkfi/ircd_config.toml` as comments or in [specification in DarkFi wiki](https://darkrenaissance.github.io/darkfi/misc/ircd/specification.html). This manual shows more explicit steps.

### Join an unencrypted channel

To add and open a public channel on ircd, such as #new_channel, just add it to autojoin line in the config file. LunarDAOs public channel is '#lunardao'. An example would be adding a channel called "#lunardao-support" to your config"

```sh
autojoin = [....<existing_channels>..., "#lunardao"]
```  
- `#lunardao` is a public channel, which means it is unencrypted and therefore no secret is needed. Adding the channel like this is enough.

Restart ircd daemon (restart ircd after any config changes). The channel shall appear automatically in the weechat. Without a secret, the channel is unencrypted and anyone can join and see the content.

### Join an encrypted channel

**Generate secret for a new channel**

In case of starting a new private channel, a secret must be generated.

1. Generate a secret for a new secret channel, enter in terminal: `ircd --gen-secret`
2. Add the secret and a name of channel of your choice to your config file (read below).
3. Share this secret and the exact name of the channel **PRIVATELY** with others who are to be included in the channel.

**Add an encrypted channel to ircd**

1. Include the name of the channel and the secret to the config file (~/.config/darkfi/ircd_config.toml):

```sh
[channel."#nameofthesecretchannel"]
secret = "{secret_string}"  
topic = "the purpose of the channel
```

2. add the "#nameofthesecretchannel" to the autojoin `[]` line just like with public channels above. 
3. Save the config file and restart ircd - the channels will appear in the weechat client.

## Direct messages

To DM with someone on ircd:

1. Generate a key-pair using `ircd --gen-keypair`.  
***NEVER*** share your private key! 

Possibly keys can be shared to a file using 
```sh
ircd --gen-keypair -o ~/some_dir/filename
```

2. Add a line to ircd_config.toml: 
```sh
[private_key."your_newly_generated_private_key"]
```
3. Share the pub key publicly or with others you want to chat with
4. Add a contact of a user to DM with to the ircd_config.toml:

```sh
[contact."name_for_contact_of_your_choice"]
contact_pubkey = "the_pub_key_sent_by_the_contact" 
```

5. Save the config and restart ircd
6. To add this contact in the weechat client, enter `/query {same_name_as_in_the_config}`. Name appears in the contact list.
	- Note: However users may change their nicks often, the `/query {name}` command reads the `{name}` added per contact to ircd_config.toml. The daemon reads the pub_key associated with the `{name}` saved (aligning with the counterpartys *private_key* in their config). *(Can be understood as a contact list in a phone.)*
7. Both of the users interested to DM must add the other ones pub key to the config as a contact, save and restart ircd.

### Meeting bot

LunarDAO deployed [the meetbot.py](https://github.com/darkrenaissance/darkfi/tree/master/bin/ircd/script/bots/meetbot) to moderate the community meetings. Type following commands to use the bot.

See the meeting agenda.
```sh
!list
```

Add a topic to the agenda.
```sh
!topic {YOUR TOPIC}
```

Start a meeting
```sh
!start
```

Move to the next topic
```sh
!next
```

End meeting.
```sh
!end
```

## ircd on tor

This is what to do in order to route ircd traffic through tor.

- Run tor daemon in background or in a terminal using:

```sh
sudo tor
```

- Start ircd like this:

```sh
torify ./ircd 
```

## ircd with NYM

DarkFi offers a guide on how to use Nym's mixnet to anonymously connect to other peers in the network when using ircd.

- [https://darkrenaissance.github.io/darkfi/clients/nym_outbound.html#anonymous-outbound-connection](https://darkrenaissance.github.io/darkfi/clients/nym_outbound.html#anonymous-outbound-connection)