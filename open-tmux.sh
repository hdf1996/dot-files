#!/bin/sh
tmux-next new-session -d
cd ~/.dot-files
git fetch origin > /dev/null 2>&1
reslog=$(git log HEAD..origin/master --oneline)
echo "Test"
if [[ "${reslog}" != "" ]] ; then
  tmux-next split-window -d 'echo "There is updates for your dot-files folder. You can pull them using pull-my-fucking-dot-files :)"; read'
  tmux-next resize-pane -t 1 -y 3
fi
cd -
tmux-next -2 attach-session -d
