#!/bin/bash

# Common helpers and package-wide variables.
app_root="${install_dir:-/var/www/$app}"
build_dir="$app_root/build"

build_write_nostr() {
	pushd "$app_root" >/dev/null
	npm ci --ignore-scripts
	npm run build
	popd >/dev/null
	chown -R www-data: "$app_root"
}
