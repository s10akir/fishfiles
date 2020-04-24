function noti --description 'send mac notify'
  osascript -e 'display notification "'$argv'" with title "noti"'
end
