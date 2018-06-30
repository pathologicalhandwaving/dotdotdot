#!/bin/bash

cd /Volumes/JumpShip/Clouds/Dropbox/VoiceMemos

for i in *.mp3
do
    sox "$i" "$(basename -s .mp3 "$i").wav"
done

echo "All mp3 have been converted to wav!"

for i in *.m4a
do
    ffmpeg -i "$i" "$(basename -s .m4a "$i").wav"
done

echo "All m4a have been converted to wav!"

exit 0
