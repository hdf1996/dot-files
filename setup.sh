mkdir -p $HOME/.dot-files/bin

if [ -d "$HOME/.dot-files/.git" ] 
then
  cd $HOME/.dot-files
  git pull origin master 
else
  git clone git@github.com:hdf1986/sync-that-thing-please.git $HOME/.sync-that-thing-please/source --depth=1
fi
