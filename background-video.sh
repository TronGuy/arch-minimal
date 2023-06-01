#!/bin/sh

#primary-monitor
xwinwrap -g 1366x768 -ov  -- mpv -wid WID  ~/kakashi.webm --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --no-input-default-bindings &

#secondary-monitor
xwinwrap -g 1366x768+1366+0 -ov  -- mpv -wid WID  ~/shinobu.webm --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio  --no-input-default-bindings &
