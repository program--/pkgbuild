#!/usr/bin/env bash
set -e

pkg_to_build=$1

cd "${pkg_to_build}/"

makepkg -sic

yay -U --noconfirm *.tar.zst
