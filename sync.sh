#!/bin/bash
# 使い方: bash sync.sh <cocoas-mail-dashboard の場所>
set -e
S="${1:?場所を指定してください}"
cp "$S/parent.html" index.html
cp "$S/parent.html" parent.html
for f in creator.html manual-wa.html privacy.html terms.html; do [ -f "$S/$f" ] && cp "$S/$f" "$f"; done
rm -rf img && cp -R "$S/img" img
