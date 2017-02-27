cd ~/.dot-files
git fetch origin > /dev/null 2>&1
reslog=$(git log HEAD..origin/master --oneline)
echo "Test"
if [[ "${reslog}" != "" ]] ; then
  tmux-next split-window -d echo "There's updates for your dot-files folder. You can pull them using pull-my-fucking-dot-files :)"
fi
cd -
