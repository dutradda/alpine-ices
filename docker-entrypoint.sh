#!/bin/sh

if [ -n "$ICES_NAME" ]; then
    sed -i "s/<name>[^<]*<\/name>/<name>$ICES_NAME<\/name>/g" /etc/ices.xml
fi
if [ -n "$ICES_GENRE" ]; then
    sed -i "s/<genre>[^<]*<\/genre>/<genre>$ICES_GENRE<\/genre>/g" /etc/ices.xml
fi
if [ -n "$ICES_DESC" ]; then
    sed -i "s/<description>[^<]*<\/description>/<description>$ICES_DESC<\/description>/g" /etc/ices.xml
fi
if [ -n "$ICES_URL" ]; then
    sed -i "s/<url>[^<]*<\/url>/<url>$ICES_URL<\/url>/g" /etc/ices.xml
fi
if [ -n "$ICES_PLAYLIST" ]; then
    sed -i "s/<param name="file">[^<]*<\/param>/<param name="file">$ICES_PLAYLIST<\/param>/g" /etc/ices.xml
fi
if [ -n "$ICES_RANDOM" ]; then
    sed -i "s/<param name="random">[^<]*<\/param>/<param name="random">$ICES_RANDOM<\/param>/g" /etc/ices.xml
fi
if [ -n "$ICES_PLAY_ONCE" ]; then
    sed -i "s/<param name="once">[^<]*<\/param>/<param name="once">$ICES_PLAY_ONCE<\/param>/g" /etc/ices.xml
fi
if [ -n "$ICES_RESTART_REREAD" ]; then
    sed -i "s/<param name="restart-after-reread">[^<]*<\/param>/<param name="restart-after-reread">$ICES_RESTART_REREAD<\/param>/g" /etc/ices.xml
fi
if [ -n "$ICES_HOSTNAME" ]; then
    sed -i "s/<hostname>[^<]*<\/hostname>/<hostname>$ICES_NAME<\/hostname>/g" /etc/ices.xml
fi
if [ -n "$ICES_PORT" ]; then
    sed -i "s/<port>[^<]*<\/port>/<port>$ICES_NAME<\/port>/g" /etc/ices.xml
fi
if [ -n "$ICES_PASSWORD" ]; then
    sed -i "s/<password>[^<]*<\/password>/<password>$ICES_PASSWORD<\/password>/g" /etc/ices.xml
fi
if [ -n "$ICES_MOUNTPOINT" ]; then
    sed -i "s/<mount>[^<]*<\/mount>/<mount>$ICES_MOUNTPOINT<\/mount>/g" /etc/ices.xml
fi

exec "$@"
