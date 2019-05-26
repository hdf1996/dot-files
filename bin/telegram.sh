source ~/.dot-files/functions/telegram.sh
echo $1
beovebot "$1" > /dev/null 2>&1
