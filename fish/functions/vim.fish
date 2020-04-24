function vim --description 's10akir/moja-nvim'
  if type "docker" > /dev/null 2>&1
    docker run --rm -it \
    -e HOME=/root \
    -v $HOME:$HOME:cached \
    -v $HOME/.wakatime.cfg:/root/.wakatime.cfg \
    -v $HOME/.wakatime.db:/root/.wakatime.db \
    -v $HOME/.wakatime.data:/root/.wakatime.data \
    -v $HOME/.wakatime.log:/root/.wakatime.log \
    --workdir=(pwd) \
    s10akir/moja-nvim $argv;
  else
    eval (which vim) $argv;
  end
end
