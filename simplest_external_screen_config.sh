#!/bin/bash

# Written by Stéphane Gourichon <stephane.gourichon@fidergo.fr>

# Very simple external display management for the window system that
# is called "X" or "X11".

# It does *not* handle the general case.

# Intended use case: plug a screen, to your machine's output.  Call
# this script, optionally with a word telling the intended use:
#
# * mirror to have both display cover (roughly) the same area of visualizable video memory
# * left, right, above or below, to cover a relatively positioned area outside of main display

# For example:
# simplest_external_screen_config
# simplest_external_screen_config mirror
# simplest_external_screen_config left
# simplest_external_screen_config right
# simplest_external_screen_config above
# simplest_external_screen_config below

declare -A directions

directions[left]=--left-of
directions[right]=--right-of
directions[above]=--above
directions[below]=--below
directions[over]=--same-as

if [[ -n "$1" ]]
then
    XRANDR_DIR_SPEC="${directions["$1"]}"
fi

xrandr --auto # first pass to automatically deactivate disconnected outputs

# xrandr --listmonitors or --listactivemonitors does not tell
# connected but not enabled displays.  We have to parse default output.
readarray -t OUTPUTS < <( LC_ALL=C xrandr | sed -n 's/ connected.*$//p' )

CURRENT="${OUTPUTS[0]}"
unset OUTPUTS[0]

for OUTPUT in "${OUTPUTS[@]}"
do
    xrandr --output "$OUTPUT" --auto ${XRANDR_DIR_SPEC:+ ${XRANDR_DIR_SPEC} ${CURRENT} }
    CURRENT="$OUTPUT"
done
