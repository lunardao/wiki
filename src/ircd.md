# Chat - IRC (ircd & weechat)

For the purpose of a quick and instant chat or communication which is 100% anonymous and if chosen private, especially for coordination of smaller groups (or committees - read [governance](./governance.md)), we use ircd - a peer-to-peer chat, built by [DarkFi](dark.fi). ircd supports group chats (open and private) as well as DM. Weechat is a client most of the people use (runs the chat in terminal), other IRC clients will work as well.

## Installation

**Dependencies**

```sh
sudo apt-get install -y git make jq gcc vim weechat pkg-config libssl-dev
```
On debian based system, the user can run this to install dependencies:

```sh
sudo apt-get update
sudo apt-get install -y git make jq gcc pkg-config libmpg123-dev
```
For other os, check [here](https://darkrenaissance.github.io/darkfi/index.html) to see which dependencies are needed. 
**ircd**

All the steps are in the DarkFi's ircd installation [guide](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html) and in the [ircd config file template](https://github.com/darkrenaissance/darkfi/blob/master/bin/ircd/ircd_config.toml) as comments, this manual shows more explicit steps. 


To install ircd, and the chat client [Weechat](https://weechat.org/files/doc/stable/weechat_user.en.html) follow DarkFi's [ircd installation guide](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html)

* Make sure to go through the whole installation and set up Weechat.
* Running ircd for the first time will create a new config file in `~/.config/darkfi/` called `ircd_config.toml`. Always use this particular file to change configuration, not the template in the repository.
* To change the config file - either run `vim ~/.config/darkfi/ircd_config.toml` click on `i` to insert, make your changes and after press `<esc>` and enter `:w` to save or `:x` to save and exit, or edit the file in another text editor.
* First add `"#lunardao"` public channel to the autojoin line: `autojoin = [......., "#lunardao"]`

## Usage

Run ircd and start weechat:

* ircd daemon must be running in a terminal window for weechat to work. To start ircd, enter: `ircd`
* in another window run weechat: `weechat`

**Weechat tips**

Weechat commands are run down in the chat input field

1. Configure weechat, save and quit:

```sh
/server add darkfi localhost/6667 -autoconnect
/save
/quit
```

2. `weechat` to restart
3. To change your nick in weechat, enter:

```sh
/nick <new_nick>
```

4. Change chat rooms by *alt + arrow up/down* **or** *alt + channel_number*

**Join an unencrypted channel**

To add and open a public channel on ircd, such as #new_channel, just add it to autojoin line in the config file:

```sh
autojoin = [....<existing_channels>..., "#new_channel"]
```

Restart ircd (restart ircd after any config changes). The channel shall appear automatically in the weechat.

**Join an encrypted channel**

To add an encrypted channel to ircd:

1. Include the name of the channel and the secret to the config file:

```sh
[channel."#nameofchannel"]
secret = "<secret_string>"
```

2. add the "#nameofchannel" to the autojoin `[]` line just like with public channels above. 
3. Save the config file and restart ircd - the channels will appear in the weechat client.

**Generate secret for channel**

In case of starting a new private channel, a secret must be generated.

1. Generate a secret for a new secret channel, enter in terminal: `ircd --gen-secret`
2. Add the secret and a name of channel of your choice to your config file (like in the previous step).
3. Share this secret and the exact name of the channel **PRIVATELY** with others who are to be included in the channel (like in the previous steps).

**Direct Messages**

To DM with someone on ircd:

1. Generate a key-pair using `ircd --gen-keypair`. ***NEVER*** share your private key! Possibly keys can be shared to a file using 
```sh
ircd --gen-keypair -o ~/some_dir/filename
```

2. Add a line to ircd_config.toml: `[private_key."your_newly_generated_private_key"]`
3. Share your pub key publicly or with others you want to chat with
4. Add a contact of a user to DM with to the ircd_config.toml:

```sh
[contact."name_for_contact_of_your_choice"]
contact_pubkey = "the_pub_key_sent_by_the_contact" 
```

5. Save the config and restart ircd
6. To add this contact in the weechat client, enter `/query <same_name_as_in_the_config>`. Name appears in the contact list.
	- Note: However users may change their names as often as they wish, the /query <name> command is based on the <name> added per contact to ircd_config.toml as the contact is added based on the *contact_pubkey* (aligning with the counterpartys *private_key* in their config). Can be understood as a contact list in a phone.
7. Both of the users interested to DM must have add the other ones pub key to the config as a contact, save and restart ircd.
