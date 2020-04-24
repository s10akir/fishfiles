function wmv --description 'move window position'
  set size "$argv[2], $argv[3]"

  set x (math (math 2560 - $argv[2]) / 2)
  set y (math (math 1600 - $argv[3]) / 2)
  set position "$x, $y"

  osascript -e "tell application \"System Events\" to tell application process \"$argv[1]\"
    tell window 1
      set {size, position} to {{$size}, {$position}}
    end tell
  end tell"
end
