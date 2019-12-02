if application "Spotify" is running then
	tell application "Spotify"
		return (get name of current track) & " - " & (get artist of current track)
	end tell
else if application "Safari" is running then
	tell application "Safari"
		repeat with t in tabs of windows
			tell t
				if URL starts with "http://www.youtube.com/watch" or URL starts with "https://www.youtube.com/watch" then
					if length of (name of t as text) is less than 30 then
						return (name of t as text)
					else
						return (text 1 thru 30 of (name of t as text)) & "..."
					end if
				end if
			end tell
		end repeat
	end tell
end if
return ""
