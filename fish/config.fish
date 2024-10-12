starship init fish | source
zoxide init fish | source

# Disable default greeting message
set fish_greeting

fish_add_path ~/.local/bin/

export XDG_CONFIG_HOME="$HOME/.config"

set -x EDITOR nvim
set -x EZA_COLORS sc=0


### Navigation
# Go
alias g='z'

# Go up directory
alias gu='cd ..'

# Go up directory and list
alias gul='gu; l'

# Go back
alias gb='cd -'

# Go back and list directory
alias gbl='gb; l'

# Go to directory and list
function gl
        g $argv
        if test $status = 0
                l
        end
end

# List directory
alias l='exa -l -a --icons --group-directories-first'

# List directory as tree
alias lt='exa -l -a -T -L 2 --icons --git-ignore'

# List directory as tree (all levels)
alias lta='exa -l -a -T --icons --git-ignore'


### File interactions
# Show file contents
alias s='bat'

# Edit file
alias e='nvim'

# New file
alias n='touch'

# New directory
alias nd='mkdir'

# Find files
alias f='fd --strip-cwd-prefix --hidden --exclude .git | fzf --preview \'bat --color=always {}\' --preview-window \'~5\''

# Copy
alias copy='wl-copy'

# Paste
alias paste='wl-paste'

# Open in File Browser
function open
    set target_path $argv
    if not string match -q "/*" $target_path
        set target_path $PWD/$target_path
    end
    swaymsg exec "nautilus -w $target_path"
end

# Replace current terminal with File Browser
function br
    set target_path $argv
    if not string match -q "/*" $target_path
        set target_path $PWD/$target_path
    end
    swaymsg exec "nautilus -w $target_path"; exit
end

# Run Firefox
alias fox='swaymsg exec firefox; exit'
#Run Steam
alias steam='swaymsg exec steam; exit'

# New directory go
function ndg
        mkdir $argv
        if test $status = 0
                cd $argv
        end
end

# Process link
function plink
    if test (count $argv) -lt 1
        echo -e "usage:\n\tplink target [name]"
        return
    end
    if test -z $argv[2]
        set argv[2] (basename $argv[1])
    end
    ln -sn (realpath $argv[1]) ~/.local/bin/$argv[2]
end

# Backup file
function bu
        if test $argv[1]
                set date (date -I)
                cp -R $argv[1] $argv[1]_backup_$date
                echo "Backup created: $argv[1]_backup_$date"
        else
                echo -e "usage:\n\tpbu [target]"
        end
end


### HTTP
# Get
alias get="http GET"
# Post
alias post="http POST"


### AWS
# Local AWS
alias laws="aws --endpoint-url=http://localhost:4566"


### Go
# Go mod init
alias gmi='go mod init github.com/riridotdev/(basename (pwd))'


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
        if test $argv
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

# Github create repo
function ghcr
        if test $argv
            set reponame $argv
        else
            set reponame (basename (pwd))
        end
        gh repo create $reponame --private --source=.
        git push --set-upstream origin main
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
