#! /usr/bin/env bash
#! nix-shell -i bash -p gnused nix nodejs prefetch-npm-deps wget

set -euo pipefail

version=$(npm view unocss-language-server version)
tarball="unocss-language-server-$version.tgz"
url="https://registry.npmjs.org/unocss-language-server/-/$tarball"

wget "$url"
tar xf "$tarball" --strip-components=1 package/package.json
npm i --package-lock-only --ignore-scripts
npm_hash=$(prefetch-npm-deps package-lock.json)
sed -i 's#npmDepsHash = "[^"]*"#npmDepsHash = "'"$npm_hash"'"#' default.nix
rm -f package.json ./*.tgz