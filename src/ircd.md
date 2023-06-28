# Chat - p2p IRC (ircd & weechat)

* ircd repository: https://github.com/darkrenaissance/darkfi/tree/master/bin/ircd

For the purpose of a quick and instant chat or communication which is 100% anonymous and if chosen private, especially for coordination of smaller groups (or committees - read [governance](./governance.md)), we use ircd - a peer-to-peer IRC chat, built by [DarkFi](dark.fi). ircd supports group chats (open and private) as well as DMs. 

Weechat is a client most of the people use (runs the chat in terminal), other IRC clients will work as well.

## Installation

***Note:*** This installation guide is for Linux based on Debian. For other OS, check [here](https://darkrenaissance.github.io/darkfi/index.html) to see which dependencies are needed.

**Open your terminal and navigate to the directory where you want to have Darkfi repository downloaded and follow the steps below.**

**Dependencies**

```sh
sudo apt-get install -y git make jq gcc vim weechat pkg-config libssl-dev
sudo apt-get install weechat-curses weechat-plugins
```
In case `libssl-dev` returned error run:

```sh
sudo apt-get install libmpg123-dev
```

Install Rust & Cargo

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup target add wasm32-unknown-unknown
```

**Clone DarkFi & Install ircd**

```sh
git clone https://github.com/darkrenaissance/darkfi/
cd darkfi
make BINS=ircd
sudo make install BINS=ircd
```

**Config Download**

To make it easier, LunarDAO made a custom ircd configuration.

```sh
mkdir ~/.config/darkfi
wget -P ~/.config/darkfi https://raw.githubusercontent.com/lunardao/ircd/master/ircd_config.toml
```

**Run ircd**

The following command starts ircd daemon, the chat works only when this daemon is running, don't turn it off.

```sh
ircd
```

**Start & Configure Weechat**

Open a new terminal window and start weechat:

```sh
weechat
```

Connect weechat to the ircd daemon, save and restart the client. In Weechat prompt line enter these commands:

```sh
/server add darkfi localhost/6667 -autoconnect
/save
/quit
```
## Usage

**ircd**

In case you restarted computer or lost connection, restart ircd, entering:

```sh
ircd
```

Keep the daemon running and open a new window to run the Weechat client.

**Start Weechat & Chat**

```sh
weechat
```

**Weechat Commands**

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

### Meeting Bot

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

## New Rooms Configuration

All the steps are in the ircd config file in `~/.config/darkfi/ircd_config.toml` or in [ircd config file template](https://raw.githubusercontent.com/lunardao/ircd/master/ircd_config.toml) as comments, this manual shows more explicit steps.

### Join an unencrypted channel

To add and open a public channel on ircd, such as #new_channel, just add it to autojoin line in the config file. LunarDAOs public channel is '#lunardao'. An example would be adding a channel called "#lunardao-support" to your config"

```sh
autojoin = [....<existing_channels>..., "#lunardao-support"]
```

Restart ircd daemon (restart ircd after any config changes). The channel shall appear automatically in the weechat.


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
```

2. add the "#nameofthesecretchannel" to the autojoin `[]` line just like with public channels above. 
3. Save the config file and restart ircd - the channels will appear in the weechat client.

## Direct Messages

To DM with someone on ircd:

1. Generate a key-pair using `ircd --gen-keypair`. ***NEVER*** share your private key! 

Possibly keys can be shared to a file using 
```sh
ircd --gen-keypair -o ~/some_dir/filename
```

2. Add a line to ircd_config.toml: 
```sh
[private_key."your_newly_generated_private_key"]
```
3. Share your pub key publicly or with others you want to chat with
4. Add a contact of a user to DM with to the ircd_config.toml:

```sh
[contact."name_for_contact_of_your_choice"]
contact_pubkey = "the_pub_key_sent_by_the_contact" 
```

5. Save the config and restart ircd
6. To add this contact in the weechat client, enter `/query {same_name_as_in_the_config}`. Name appears in the contact list.
	- Note: However users may change their nicks often, the `/query {name}` command reads the `{name}` added per contact to ircd_config.toml. The daemon reads the pub_key associated with the `{name}` saved (aligning with the counterpartys *private_key* in their config). *(Can be understood as a contact list in a phone.)*
7. Both of the users interested to DM must add the other ones pub key to the config as a contact, save and restart ircd.

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

[https://darkrenaissance.github.io/darkfi/clients/nym_outbound.html#anonymous-outbound-connection](https://darkrenaissance.github.io/darkfi/clients/nym_outbound.html#anonymous-outbound-connection)