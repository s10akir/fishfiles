# golang
set -x GOPATH ~/.go
set -x PATH $PATH $GOPATH/bin

if [ (uname) = "Linux" ] # Linux

  # rbenv
  set -x RBENV_ROOT /usr/local/rbenv
  set -x PATH $PATH $RBENV_ROOT/bin

  if type "rbenv" > /dev/null 2>&1
    status --is-interactive; and source (rbenv init -|psub)
  end

else if [ (uname) = 'Darwin' ] # macOS

  # python-pip
  set -x PATH $PATH $HOME/Library/Python/3.7/bin

end

# starship
starship init fish | source
