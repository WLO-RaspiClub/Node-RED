#!/bin/bash

# old "note" directory remove (my mistake on 2017/7/13)
sudo rm -R /usr/share/fonts/opentype/note
sudo mkdir -p /usr/share/fonts/opentype/noto

# NotoSans(Gothic) font
wget -O NotoSansCJKjp-hinted.zip https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
unzip -d NotoSansCJKjp-hinted NotoSansCJKjp-hinted.zip
sudo mv -fv ./NotoSansCJKjp-hinted/* /usr/share/fonts/opentype/noto
rm -rfv NotoSansCJKjp-hinted.zip
rmdir NotoSansCJKjp-hinted

# NotoSerif(Mincho)
wget -O NotoSerifCJKjp-hinted.zip https://noto-website.storage.googleapis.com/pkgs/NotoSerifCJKjp-hinted.zip
unzip -d NotoSerifCJKjp-hinted NotoSerifCJKjp-hinted.zip
sudo mv -fv ./NotoSerifCJKjp-hinted/* /usr/share/fonts/opentype/noto
rm -rfv NotoSerifCJKjp-hinted.zip
rmdir NotoSerifCJKjp-hinted

# font cache
sudo fc-cache -fv
