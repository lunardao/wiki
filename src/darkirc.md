# Chat - P2P IRC (Darkirc & Weechat)

For the purpose of a quick and instant chat or communication which is 100% anonymous and if chosen private, especially for coordination of smaller groups or committees, we use Darkirc - a peer-to-peer 
IRC chat, built by [DarkFi](https://dark.fi/). Darkirc supports group chats (open and private) as well as DMs. 

Weechat is a client most use (runs in terminal), although other IRC clients will work as well.

### Meeting bot

LunarDAO deployed [meetbot.py](https://codeberg.org/darkrenaissance/darkfi/src/branch/master/bin/darkirc/script/bots/meetbot) to moderate the community meetings. Type following commands to use the bot.

See the meeting agenda.
```sh
!list
```

Add a topic to the agenda.
```sh
!topic {YOUR TOPIC}
```

Start a meeting.
```sh
!start
```

Move to the next topic.
```sh
!next
```

End meeting.
```sh
!end
```

## Darkirc on tor

Here are steps to [set up a Tor-enabled Darkirc node](https://darkrenaissance.github.io/darkfi/misc/nodes/tor-guide.html).
