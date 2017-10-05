// System Preferences > Network > Advanced > Proxies > Automatic Proxy Configuration
// URL: file:///Users/{user}/.dotfiles/system/tor.pac
function FindProxyForURL(url, host) {
    domains = ['.pandora.com']

    for (var i in domains) {
        if (dnsDomainIs(host, domains[i])) {
            return 'SOCKS5 127.0.0.1:9050';
        }
    }

    return 'DIRECT';
}