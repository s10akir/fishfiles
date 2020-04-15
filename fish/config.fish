# golang
set -x GOPATH ~/.go
set -x PATH $PATH $GOPATH/bin

# rbenv
set -x RBENV_ROOT /usr/local/rbenv
set -x PATH $PATH $RBENV_ROOT/bin

if type "rbenv" > /dev/null 2>&1
  status --is-interactive; and source (rbenv init -|psub)
end

# starship
starship init fish | source
