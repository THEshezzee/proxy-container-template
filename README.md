> :warning: **Use in private repos only**

# Configurations
`client_tcp_secure.toml` - rathole configuration

`server.json` - [sing-box](https://github.com/SagerNet/sing-box) configuration
<details>
  <summary>Important vars</summary>

  `secret` - change `OPTIONAL_SECRET` to something else

  `private_key` - wireguard private key for cf warp, see https://github.com/ViRb3/wgcf

</details>

# Env
`creds` - ttyd authentication credentiales in user:pass format  
`ts_key` - [tailscale](https://tailscale.com/) api key

# Ports

## internal e.g localhost
`40080` - proxy ingress  
`9050` - tor proxy

## external
`7681` - ttyd  
`9092` - sing-box webui
> :warning: Change `OPTIONAL_SECRET` in server.json to use webui
