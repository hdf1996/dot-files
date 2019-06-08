beovebot () {
  telegram -WDR -e "msg user#893359040 \"$1\""
}

p () {
  message="$@"
  bash -c "nohup ~/.dot-files/bin/telegram.sh \"$message\"  >/dev/null 2>/dev/null &"
}
