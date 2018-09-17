#!/bin/bash
set -e
bundle exec jekyll build
ipfs add -r _site
ipfs pin rm -r $(<.ipfs.pin)
ipfs add -r -Q _site > .ipfs.pin
ipfs pin add -r $(<.ipfs.pin)
ipfs name publish --key=olus.io $(<.ipfs.pin)
git add .ipfs.pin
git commit -m "IPFS Publish"
git push
