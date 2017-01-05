# Author: Kacper Polak <kacper@hypequality.com>
# Git: https://github.com/kacepe/useful-scripts/blob/master/applescript/spotify-alarm/spotify-alarm.applescript

set volume 2
set volumeVariable to 2
open location "spotify:user:{YOUR SPOTIFY ACCOUNT ID}"
tell application "Spotify"
  delay 30
  set the sound volume to 100
  play track "{YOUR PLAYLIST URI}"
  repeat 6 times
    delay 3
    set volumeVariable to (volumeVariable + 1)
    set volume volumeVariable
  end repeat
end tell