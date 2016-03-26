ignoring application responses
    tell application "System Events" to tell process "MacID"
        click menu bar item 1 of menu bar 2
    end tell
end ignoring
do shell script "killall System\\ Events"
delay 0.1
tell application "System Events" to tell process "MacID"
    tell menu bar item 1 of menu bar 2
        click menu item "Send clipboard text to all iOS devices…" of menu 1
        --click menu item 10 of menu 1
    end tell
end tell
