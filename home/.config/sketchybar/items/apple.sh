#!/usr/bin/env sh

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"

sketchybar --add event lock     "com.apple.screenIsLocked"                  \
           --add event unlock   "com.apple.screenIsUnlocked"                \
                                                                            \
           --add item           apple.logo left                             \
           --set apple.logo     icon=$APPLE                                 \
                                icon.font="$FONT:Black:16.0"                \
                                icon.color=$GREEN                           \
                                label.drawing=off                           \
                                                                            \
           --subscribe          apple.logo lock unlock                      \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon=$PREFERENCES                           \
                                label="Preferences"                         \
                                click_script="open -a 'System Preferences';
                                              $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon=$ACTIVITY                              \
                                label="Activity"                            \
                                click_script="open -a 'Activity Monitor';
                                              $POPUP_OFF"\
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon=$LOCK                                  \
                                label="Lock Screen"                         \
                                click_script="pmset displaysleepnow;
                                              $POPUP_OFF"
