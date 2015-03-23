tell application "System Preferences"
	quit
end tell
delay 1
tell application "System Preferences"
	activate
end tell

tell application "System Events"
	tell process "System Preferences"
		click button "Sharing" of scroll area 1 of window "System Preferences"
		delay 2
		tell window "Sharing"
			click checkbox 1 of row 7 of table 1 of scroll area 1 of group 1
			delay 1
			if (exists sheet 1) then
				click button "Start" of sheet 1
			end if
		end tell
	end tell
end tell

tell application "System Preferences"
	quit
end tell
