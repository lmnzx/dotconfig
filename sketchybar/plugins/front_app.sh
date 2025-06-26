#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then
    case $INFO in
    "Zen")
        ICON_PADDING_RIGHT=5
        ICON=
        ;;
    "Calendar")
        ICON_PADDING_RIGHT=3
        ICON=
        ;;
    "Discord")
        ICON=
        ;;
    "FaceTime")
        ICON_PADDING_RIGHT=5
        ICON=
        ;;
    "Finder")
        ICON=󰀶
        ;;
    "IINA")
        ICON_PADDING_RIGHT=4
        ICON=󰕼
        ;;
    "Ghostty")
        ICON_PADDING_RIGHT=4
        ICON=󱙝
        ;;
    "Messages")
        ICON_PADDING_RIGHT=4
        ICON=
        ;;
    "Notion")
        ICON_PADDING_RIGHT=6
        ICON=󰎚
        ;;
    "Preview")
        ICON_PADDING_RIGHT=3
        ICON=
        ;;
    "PS Remote Play")
        ICON_PADDING_RIGHT=3
        ICON=
        ;;
    "Spotify")
        ICON_PADDING_RIGHT=2
        ICON=
        ;;
    "TextEdit")
        ICON_PADDING_RIGHT=4
        ICON=
        ;;
    "Transmission")
        ICON_PADDING_RIGHT=3
        ICON=󰶘
        ;;
    *)
        ICON_PADDING_RIGHT=2
        ICON=
        ;;
    esac
    
  sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT label="$INFO"
fi

