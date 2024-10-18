#!/bin/sh -e
flatpak-builder --user --repo=tibia --force-clean build-dir com.tibia.Client.json
flatpak --user remote-add --no-gpg-verify --if-not-exists tibia tibia
flatpak install tibia com.tibia.Client
flatpak update com.tibia.Client
