#!/bin/bash

# Apps to start :
apps=(
 "firefox"
 "alacritty"
 "spotify"
 "viber"
)

# Which workspace to assign your Apps :
workspaces=(
"2: "
"3: "
"4: "
"5: "
)

# counter of opened windows
owNB=0

# add paths of apps to array
arr=()
arr+=( '/usr/bin/' )
arr+=( '/usr/bin/' )
arr+=( '/usr/bin/' )
arr+=( '/usr/bin/' )

for iwin in ${!apps[*]}
do
    while [ "$owNB" -lt "$iwin" ] # wait before start other programs
    do
        owNB=$(wmctrl -l | wc -l) # Get number of actual opened windows
    done

    i3-msg workspace ${workspaces[$iwin]} # move in wanted workspace
    ${arr[$iwin]}/${apps[$iwin]} & # start the wanted app
    sleep 0.5
done

sleep 1 


