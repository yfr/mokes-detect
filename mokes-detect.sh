#!/usr/bin/env bash

FILES=("$HOME/Library/App Store/storeuserd" "$HOME/Library/com.apple.spotlight/SpotlightHelper" "$HOME/Library/Dock/com.apple.dock.cache" "$HOME/Library/Skype/SkypeHelper" "$HOME/Library/Dropbox/DropboxCache" "$HOME/Library/Google/Chrome/nacld" "$HOME/Library/Firefox/Profiles/profiled" "$HOME/Library/LaunchAgents/$filename.plist" "$TMPDIR/ss*-$date-$time-$ms.sst" "$TMPDIR/aa*-$date-$time-$ms.aat" "$TMPDIR/kk*-$date-$time-$ms.kkt" "$TMPDIR/dd*-$date-$time-$ms.ddt")
INFECTED=0

for FILE in "${FILES[@]}"; do
    if [ -e "$FILE" ]; then
        echo
        echo "Your system seems infected. $FILE exists."
        echo
        INFECTED=1
    fi
done

if [ $INFECTED -eq 0 ]; then
    echo "Your system seems clean."
fi
