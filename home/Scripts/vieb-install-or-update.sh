#!/usr/bin/zsh

LAST_VERSION=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/Jelmerro/Vieb/releases/latest | awk -F/ '{print $8}')

FILE=vieb_"$LAST_VERSION"_amd64.deb
URL=https://github.com/Jelmerro/Vieb/releases/download/$LAST_VERSION/$FILE

curl -LO $URL
mv $FILE /tmp # this avoids problems with apt, since apt expect the location of the file to be owned by root

sudo apt install /tmp/$FILE

# rm /tmp/$FILE
trash-put /tmp/$FILE

