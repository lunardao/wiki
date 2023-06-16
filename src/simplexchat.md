# SimpleX guide

This guide is a remixed version of the [initial one published ](https://medium.com/notrustverify/what-is-simplex-chat) by Oheka & CGI_Bin from [No Trust Verify](https://notrustverify.ch).

> SimpleX is a privacy focused federated messaging platform offering an alternative to other centralized apps such as Signal, thanks to total confidentiality, no identifiers, Simplex protects against spam and gives users control over their data which is stored on their device and not on a centralized server. This application offers a more decentralized and less invasive alternative to Signal (no phone number required, for example). However some challenges are still present such as the ability to synchronize discussions across multiple devices, and optimal management of large groups are still present. 
 
## Components of SimpleX

This application uses the SimpleX platform, which consists of several components:

* **SimpleX Messaging Protocol** (SMP) is a protocol for sending messages in one direction to a recipient, with a server in between. Messages are delivered via one-way queues created by the recipients. SMP relies on a transport protocol (such as TLS) to ensure integrity, server authentication, confidentiality and binding to the transport channel.  
* **A SimpleX server** is one of these servers.  
* **The SimpleX network** is the term used to designate the set of SimpleX servers that facilitate the SMP.  
* **SimpleX client libraries** speak SMP to SimpleX servers, providing a low-level API that is not generally intended for use by applications.  
* **SimpleX agents** interface with SimpleX clients to provide a higher-level API for use by applications. They are usually integrated as libraries, but are designed to be abstracted into local services.

## How does it work?

SimpleX Chat (https://simplex.chat/) uses the various components mentioned above. SMP is the communication protocol used by network elements to exchange messages. The SimpleX agent is used as an abstraction layer to simplify the management of operations, and will also offer functionalities such as adding noise to protect the privacy of people using the application.

> The use of SimpleX queues is the major difference with other platforms such as WhatsApp, Signal or Matrix. Unlike other platforms, SimpleX doesn’t require users to create an account, and users don’t have a login as such.
> 	For the users of the application, the way it works is no different from any other messaging platform. The first step is to create a SimpleX address, which can be used on a one-time or persistent basis.

To explain the protocol simply lets look at how Bob sends a message to Alice. Alice will share her previously created SimpleX address with Bob. When Bob adds his contact, Alice will receive a request offering the possibility of refusing or accepting.

Once the connection has been accepted, the queue creation process will start on the SMP server, and will be used by Bob to deposit (as it were) messages for Alice, and then his application will retrieve the messages and display them in SimpleX Chat. This queue creation part has to be done for Bob, so for Alice to be able to send messages and reply to him, another SMP server can be used, thus improving resilience and user privacy. The complete process is much more comprehensive [and can be found here](https://github.com/simplex-chat/simplexmq/blob/stable/protocol/overview-tjr.md)

**Incognito mode**

Allows you to protect your profile (image and nickname) by not transmitting this information when you start a new discussion. A random name is generated for each new contact, making it possible to chat with 2 people without them knowing that they’re chatting with the same person. You could compare this to a browser’s private browsing.

**Live message feature**

One of the most interesting features of SimpleX that it allows you to write messages without having to send them, and the recipient will see what you’re typing live (while looking at the screen), so there’s no need to wait. This can be useful in a place where you can’t talk but want to exchange information, or as an example, given on the SimpleX website:
An activist reporting live when there’s a risk of losing his phone or connection at any moment. This function allows you to send as many messages as possible, right down to the last word, without having to send only very short messages.  
  
**Features**

* Simplex Lock  - A local passcode for the application.  
* Voice and Video calls.  
* Self-destruct passcode - alternate passcode that wipes all app data.  
* SOCKS proxy routing  - Choose to route traffic through a SOCKS proxy over port 9050.  
* .onion hosts - Choose if you want onion hosts required for each connection.  
* Database passphrase and export - Choose a timeline to delete messages after a certain amount of time & choose if the application data is backed up/exported/imported and encrypted with a passphrase.  
* Disappearing messages - The user has the ability to enable disappearing messages in a chat as long as the other particpant allows disappearing messages.  
* Group chats - Group chat creators have the ability to enable disappearing messages, direct messages, delete for everyone, & if the group should allow for voice messages. There are also roles that can be assigned (owner, admin, member, observer).

## Resources

**Quick Simplex chat client install**

`curl -o- https://raw.githubusercontent.com/simplex-chat/simplex-chat/stable/install.sh | bash`

Once the chat client is installed, simply run `simplex-chat` from your terminal.

* [Detailed CLI install steps](https://github.com/simplex-chat/simplex-chat/blob/stable/docs/CLI.md)

Running Simplex from CLI gives you the opportunity to run directly from your computer. This limits the potential exposure from introducing an application to your phone. You'll need to connect to chat rooms or direct messages by receiving an invitation link out of band, and importing the invite code into the CLI. 

**Download SimpleX Chat**

* [iOS — SimpleX Chat Client](https://apps.apple.com/us/app/simplex-chat/id1605771084)  
* [Play Store — SimpleX Chat Client](https://play.google.com/store/apps/details?id=chat.simplex.app&pli=1)  
* [F-Droid — SimpleX Chat](https://app.simplex.chat/)

**Further resources**

* [Website](https://simplex.chat/)  
* [Github Repo ](https://github.com/simplex-chat)  
* [Whitepaper](https://github.com/simplex-chat/simplexmq/blob/stable/protocol/overview-tjr.md)  
* [Threat model](https://github.com/simplex-chat/simplexmq/blob/stable/protocol/overview-tjr.md#threat-model)  
* No Trust Verify provides an SMP server, to add it you can use this address `smp://HZOF26feHaaMXqYuLTzhBFB652DEYENZEN8zpLxIeKs=@simplex.notrustverify.ch `

**Let's test together the service & join the LunarDAO Community Chat on SimpleX**

**Invite link:**

[https://simplex.chat/contact#/?v=1-2&smp=smp%3A%2F%2F6iIcWT_dF2zN_w5xzZEY7HI2Prbh3ldP07YTyDexPjE%3D%40smp10.simplex.im%2FR16MC75GlD-NQk240O3TjoY1ayua85jW%23%2F%3Fv%3D1-2%26dh%3DMCowBQYDK2VuAyEAs0P_JQapG1DgwGqpJSZOVTzFM55MAApfw5KiEa4XJxc%253D%26srv%3Drb2pbttocvnbrngnwziclp2f4ckjq65kebafws6g4hy22cdaiv5dwjqd.onion&data=%7B%22type%22%3A%22group%22%2C%22groupLinkId%22%3A%22TncwwotxmO-JHZ4Ato3KNw%3D%3D%22%7D
](https://simplex.chat/contact#/?v=1-2&smp=smp%3A%2F%2F6iIcWT_dF2zN_w5xzZEY7HI2Prbh3ldP07YTyDexPjE%3D%40smp10.simplex.im%2FR16MC75GlD-NQk240O3TjoY1ayua85jW%23%2F%3Fv%3D1-2%26dh%3DMCowBQYDK2VuAyEAs0P_JQapG1DgwGqpJSZOVTzFM55MAApfw5KiEa4XJxc%253D%26srv%3Drb2pbttocvnbrngnwziclp2f4ckjq65kebafws6g4hy22cdaiv5dwjqd.onion&data=%7B%22type%22%3A%22group%22%2C%22groupLinkId%22%3A%22TncwwotxmO-JHZ4Ato3KNw%3D%3D%22%7D
)
