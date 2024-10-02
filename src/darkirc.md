# Chat - P2P IRC (Darkirc & Weechat)

For the purpose of a quick and instant chat or communication which is 100% anonymous and if chosen private, especially for coordination of smaller groups or committees, we use Darkircd - a peer-to-peer 
IRC chat, built by [DarkFi](dark.fi). Darkirc supports group chats (open and private) as well as DMs. 

Weechat is a client most use (runs in terminal), although other IRC clients will work as well.

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

## Darkirc on tor

Here are steps to [set up a Tor-enabled darkirc node](https://darkrenaissance.github.io/darkfi/misc/tor-darkirc.html).
