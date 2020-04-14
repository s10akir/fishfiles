# golang
set -x GOPATH ~/.go
set -x PATH $PATH $GOPATH/bin

# starship
starship init fish | source
