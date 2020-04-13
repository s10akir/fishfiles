function vim --description 's10akir/moja-nvim'
  if type "docker" > /dev/null 2>&1
    docker run --rm -it -u (id -u):(id -g) -e HOME=/root -v $HOME:$HOME --workdir=(pwd) s10akir/moja-nvim $argv;
  else
    eval (which vim) $argv;
  end
end
