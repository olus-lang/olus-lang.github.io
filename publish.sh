#!/bin/bash
set -e

KEY=olus.io
SRV=2pi

bundle exec jekyll build
ipfs add -r _site
ipfs pin rm -r /ipfs/$(<.ipfs.pin)
ssh $SRV ipfs pin rm -r /ipfs/$(<.ipfs.pin)
ipfs add -r -Q _site > .ipfs.pin
ipfs pin add -r /ipfs/$(<.ipfs.pin)
ssh $SRV ipfs pin add --progress -r /ipfs/$(<.ipfs.pin)
ipfs name publish --key=$KEY /ipfs/$(<.ipfs.pin)
git add .ipfs.pin
git commit -m "IPFS Publish"
git push
