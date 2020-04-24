function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

    # User
    set_color $fish_color_user
    echo -n (whoami)
    set_color normal

    echo -n '@'

    # Host
    set_color $fish_color_host
    echo -n (prompt_hostname)
    set_color normal

    echo -n ':'

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '➤ '
    set_color normal

    set -l project

    if echo (pwd) | grep -qEi "^/Users/$USER/.ghq/"
      set  project (echo (pwd) | sed "s#^/Users/$USER/.ghq/\\([^/]*\\).*#\\1#")
    else if echo (pwd) | grep -qEi "^/Users/$USER/Working/"
      set  project (echo (pwd) | sed "s#^/Users/$USER/Working/\\([^/]*\\).*#\\1#")
    else
      set  project "Terminal"
    end

    wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&
end

