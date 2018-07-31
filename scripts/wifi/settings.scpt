tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.network"
	return get the name of every anchor of pane id "com.apple.preference.network"
	reveal anchor "Wi-Fi" of pane id "com.apple.preference.network"
end tell
