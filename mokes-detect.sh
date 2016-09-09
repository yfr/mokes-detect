#!/usr/bin/env bash

FILES=("$HOME/Library/App Store/storeuserd" "$HOME/Library/com.apple.spotlight/SpotlightHelper" "$HOME/Library/Dock/com.apple.dock.cache" "$HOME/Library/Skype/SkypeHelper" "$HOME/Library/Dropbox/DropboxCache" "$HOME/Library/Google/Chrome/nacld" "$HOME/Library/Firefox/Profiles/profiled" "$HOME/Library/LaunchAgents/$filename.plist" "$TMPDIR/ss*.sst" "$TMPDIR/aa*.aat" "$TMPDIR/kk*.kkt" "$TMPDIR/dd*.ddt" "/tmp/ss*.sst" "/tmp/aa*.aat" "/tmp/kk*.kkt" "/tmp/dd*.ddt")
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
