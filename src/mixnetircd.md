# DarkFi ircd behind Nym Mixnet

> As bulletproof anon chat as it gets!

Lunarpunk vanguards [Dark.fi](https://dark.fi) built a fully anonymous and p2p instance of IRC chat called [`ircd`](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html). The team is just finishing their new instance of the program `darkirc` which we hope to see in production soon.

Nym has been developing an app to channel all users traffic through the mixnet. Now users can use a client to run any SOCKS5 proxy traffic through. In the past users had to configure and run thir Nym network requester with a custom list of whitelisted services including DarkFi endpoints. 

[LunarDAO Nym Gateways](https://wiki.lunardao.net/gateways.html) have Network Requester (NR) and Internet Packet Router (IPR) embedded and they run according to the new Nym exit policy - a combination of Tornull and Tor reduced policy - a default filter allowing users to connect to any but blacklisted IPs and ports.

To connect your `ircd` instance to LunarDAO Nym Exit Gateways through your local `nym-socks5-client` is simple and worth it. Here are the steps...

## Configuration

**Install darkfi `ircd` and `nym-socks5-client` in the same environment.**

### Socks 5 client

1. Get nym-socks5-client from [Nym release page](https://github.com/nymtech/nym/releases)
2. Make executable: `chmod u+x nym-socks5-client`
3. Initialise and configure with one of our NR addresses listed as [Embedded Network Requester Address](./gateways.md#lunardao-gateways)
```sh
./nym-sockc5-client init --id [ANY_NAME] --provider [ANY_EMBEDDED_NR_ADDRESS_FROM_THE_LIST]
```
4. Run `./nym-socks5-client run --id [YOUR_ID]`


### ircd

1. Install [ircd](https://darkrenaissance.github.io/darkfi/misc/ircd/ircd.html)

2. Open `~/.config/darkfi/ircd_config.toml`

3. Comment the line with `seeds`

4. Add a line:
```yaml
peers = ["nym://dasman.xyz:25552"]
```

5. Change `outbond_transports` to:
```yaml
outbond_transports = ["nym"]
```

6. Make sure that
```yaml
outbound_connections = 0
```

7. Save config and restart `ircd`

Observe the ircd deamon to see that the communication is running through the mixnet.

## Bonus: Join `#lunardao` ircd channel

Now, when your Darkfi's ircd runs through Nym Mixnet, you can join public and fully anonymous channel `#lunardao`. To do so, follow one of the two possibilities:

1. Run a command in your weechat:
```sh
/join #lunardao
```
2. Or open `~/.config/darkfi/ircd_config.toml` and add `"#lunardao"` to the `autojoin = []` brackets, save and restart ircd.

## Troubleshooting

- In case your ircd has problems to start or connect, run the following:

```sh
# cd to darkfi repo
git pull
git checkout c4b78ead5111b0423fca3bd53cb7185acd6f0faa

# compile ircd
make ircd

# in case of dependency error: "failed to load source for dependency `halo2_gadgets`"
rm Cargo.lock
make ircd

# remove the config file (rename it if you want to safe any values first)
rm ~/.config/darkfi/ircd_config.toml

# rerun ircd to generate new config file
./ircd

# add your custom values from the old config file
```

- In case socks5 client is not connecting to the gateway, try another one from the list.
