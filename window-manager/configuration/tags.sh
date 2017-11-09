tag_names=( {1..4} )
tag_keys=( {1..4} 0 )

hc rename default "${tag_names[0]}" || true
for i in ${!tag_names[@]} ; do
    hc add "${tag_names[$i]}"
    key="${tag_keys[$i]}"
    if ! [ -z "$key" ] ; then
        hc keybind "$Mod-$key" use_index "$i"
        hc keybind "$Mod-Shift-$key" move_index "$i"
    fi
done
