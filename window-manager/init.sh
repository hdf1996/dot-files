DOT_FILES=$HOME/.dot-files/window-manager


hc() {
    herbstclient "$@"
}

hc emit_hook reload

xsetroot -solid '#6A8E3A'

# remove all existing keybindings
hc keyunbind --all
hc mouseunbind --all

# keybindings
# if you have a super key you will be much happier with Mod set to Mod4
Mod=Mod1    # Use alt as the main modifier
#Mod=Mod4   # Use the super key as the main modifier

for f in $HOME/.dot-files/window-manager/keybindings/*.sh; do source $f; done
for f in $HOME/.dot-files/window-manager/configuration/*.sh; do source $f; done
hc keybind $Mod-Return spawn ${TERMINAL:-xterm} # use your $TERMINAL with xterm as fallback

clients


# cycle through tags
hc keybind $Mod-period use_index +1 --skip-visible
hc keybind $Mod-comma  use_index -1 --skip-visible

# layouting
hc keybind $Mod-r remove
hc keybind $Mod-s floating toggle
hc keybind $Mod-f fullscreen toggle
hc keybind $Mod-p pseudotile toggle
# The following cycles through the available layouts within a frame, but skips
# layouts, if the layout change wouldn't affect the actual window positions.
# I.e. if there are two windows within a frame, the grid layout is skipped.

# theme
hc attr theme.tiling.reset 1
hc attr theme.floating.reset 1
hc set frame_border_active_color '#222222'
hc set frame_border_normal_color '#101010'
hc set frame_bg_normal_color '#565656'
hc set frame_bg_active_color '#345F0C'
hc set frame_border_width 1
hc set always_show_frame 1
hc set frame_bg_transparent 1
hc set frame_transparent_width 5
hc set frame_gap 4

hc attr theme.active.color '#9fbc00'
hc attr theme.normal.color '#454545'
hc attr theme.urgent.color orange
hc attr theme.inner_width 1
hc attr theme.inner_color black
hc attr theme.border_width 3
hc attr theme.floating.border_width 4
hc attr theme.floating.outer_width 1
hc attr theme.floating.outer_color black
hc attr theme.active.inner_color '#3E4A00'
hc attr theme.active.outer_color '#3E4A00'
hc attr theme.background_color '#141414'

hc set window_gap 0
hc set frame_padding 0
hc set smart_window_surroundings 0
hc set smart_frame_surroundings 1
hc set mouse_recenter_gap 0

# rules
hc unrule -F
#hc rule class=XTerm tag=3 # move all xterms to tag 3
hc rule focus=on # normally focus new clients
#hc rule focus=off # normally do not focus new clients
# give focus to most common terminals
#hc rule class~'(.*[Rr]xvt.*|.*[Tt]erm|Konsole)' focus=on
hc rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)' pseudotile=on
hc rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG' focus=on
hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off

# unlock, just to be sure
hc unlock

herbstclient set tree_style '╾│ ├└╼─┐'

# do multi monitor setup here, e.g.:
# hc set_monitors 1280x1024+0+0 1280x1024+1280+0
# or simply:
# hc detect_monitors

# find the panel
panel=~/.config/herbstluftwm/panel.sh
[ -x "$panel" ] || panel=/etc/xdg/herbstluftwm/panel.sh
for monitor in $(herbstclient list_monitors | cut -d: -f1) ; do
    # start it on each monitor
    "$panel" $monitor &
done
