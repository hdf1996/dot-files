#!/bin/sh
tmux new-session -d
cd ~/.dot-files
git fetch origin > /dev/null 2>&1
#reslog=$(git log HEAD..origin/master --oneline)
#if [[ "${reslog}" != "" ]] ; then
#  tmux split-window -d 'echo "There is updates for your dot-files folder. You can pull them using pull-my-fucking-dot-files :)"; read'
#  tmux resize-pane -t 1 -y 3
#fi
cd -
# Just for a near future...
# tmux-next split-window -d 'wit'
# tmux-next resize-pane -t 1 -y 3
tmux -2 attach-session -d
