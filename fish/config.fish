# Disable default greeting message
set fish_greeting

function fish_prompt
    echo -e "\n"(set_color -o brcyan)(string replace $HOME \~ $PWD)(set_color normal)" on "(set_color -o bryellow)(prompt_hostname)(set_color normal)"\n"$USER" > "
end

fish_add_path ~/.local/bin/
fish_add_path ~/scripts

zoxide init fish | source

export XDG_CONFIG_HOME="$HOME/.config"

set -x EDITOR nvim
set -x EZA_COLORS sc=0


### Navigation
# Go
alias g='z'

# Go up directory
alias gu='cd ..'

# Go back
alias gb='cd -'

# List directory
alias l='eza -la --group-directories-first'

# List directory as tree
alias lt='eza -la -T -L 2 --git-ignore'

# List directory as tree (all levels)
alias lta='eza -la -T --git-ignore'


### File interactions
# Show file contents
alias s='bat'

# Edit file
alias e='nvim'

# New file
alias n='touch'

# New directory
alias nd='mkdir -p'

# New directory go
function ndg
    mkdir $argv
    if test $status = 0
        cd $argv
    end
end

# Launch application and replace current terminal window
alias fox='firefox &; disown; exit'

# Binary link
function blink
    if test (count $argv) -lt 1
        echo -e "usage:\n\tplink target [name]"
        return
    end
    if test -z $argv[2]
        set argv[2] (basename $argv[1])
    end
    ln -sn (realpath $argv[1]) ~/.local/bin/$argv[2]
end


### Git
# Git status
alias gs="git status -s"

# Git add
alias ga="git add"

# Git commit
alias gcm="git commit -m"

# Git push
alias gpush="git push -u"

# Git pull
alias gpull="git pull --prune --all"

# Git log
alias glog="git log --oneline --graph --decorate --all -n25"

# Git show
alias gsh="git show --summary"

# Git stash list
alias gstl="git stash list"

# Git stash push
alias gst="git stash push"

# Git stash pop
alias gstp="git stash pop"

# Git branch prune
alias gbprune='git branch | rg -v "(^\*|master|main)" | xargs git branch -D'

# Git checkout
function gco
    if test "$argv"
        git checkout $argv
    else
        echo -e "usage:\n\tgco [ref]"
    end
end

# Git branch create
function gbc
    if test $argv
        git branch $argv
    else
        echo "No branch name provided, use 'gbc \"branch-name\"'"
        echo -e "usage:\n\tgbc [name]"
    end
end

# Git branch checkout
function gbco
    if test $argv
        git checkout -b $argv
    else
        echo -e "usage:\n\tgbco [branch]"
    end
end


### Make
# Make
function m
    set start_dir (pwd)
    while ! test -e Makefile
        if [ (pwd) = / ]
            echo "No Makefile found"
            cd $start_dir
            return 1
        end
        cd ..
    end
    make $argv
    cd $start_dir
end


### Fish
# Close window (cmd + w)
bind \e\cW 'exit'


bind backspace _autopair_delete

set --global _autopair_pairs "()" "[]" "{}" '""' "''"

for pair in $_autopair_pairs
    set --local pair_left (string sub --length 1 $pair)
    set --local pair_right (string sub --start 2 --length 1 $pair)

    bind $pair_left "_autopair \\$pair_left \\$pair_right"
end

function _autopair --argument-names left right
    commandline --insert $left
    set --local cursor_pos (commandline --cursor)
    commandline --insert $right
    commandline --cursor $cursor_pos
end

function _autopair_delete
    set --local cursor_pos (commandline --cursor)
    set --local buffer (commandline)

    if test $cursor_pos != 0 && contains (string sub --start=$cursor_pos --length=2 "$buffer") $_autopair_pairs
        commandline --function delete-char
    end

    commandline --function backward-delete-char
end
