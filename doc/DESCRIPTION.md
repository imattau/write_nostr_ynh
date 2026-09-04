# write_nostr for YunoHost

write_nostr is a distraction-free, browser-based Markdown editor for composing,
publishing, and managing NIP-23 long-form content (`kind:30023`) on Nostr,
along with feeds for discovering articles from the network.

This YunoHost package hosts the write_nostr static web app only. It does not
install a Nostr relay: the app talks directly, from the visitor's browser, to
whichever public or self-hosted relays are configured in its Settings page
(a sensible default list ships out of the box).

All data (drafts, relay list, cached articles/profiles, embeddings) is stored
client-side in the browser (localStorage/IndexedDB) — this package keeps no
server-side application data of its own. Nostr authentication (browser
extension, pasted nsec, or passkey) is independent of YunoHost accounts and
LDAP.

One feature loads a small on-device translation/embedding model from Hugging
Face's CDN directly in the visitor's browser on first use of that feature;
this is optional and not required for reading or publishing.
