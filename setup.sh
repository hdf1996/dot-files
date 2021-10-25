mkdir -p $HOME/.dot-files/bin

if [ -d "$HOME/.dot-files/.git" ] 
then
  cd $HOME/.dot-files
  git pull origin master 
else
  git clone git@github.com:hdf1986/dot-files.git $HOME/.dot-files --depth=1
fi
