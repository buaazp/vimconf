# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Plugins
set fish_plugins brew git

# Alias
alias gitlog "git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset'"
alias gits "git status"
alias goget "gopm get -g -v"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set -x PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin
set -x GOPATH /Users/zippo/develop/GO
set -x GOROOT /usr/local/Cellar/go/1.4.2/libexec
set -x PATH $GOROOT/bin $GOPATH/bin $PATH
set -x GIT_EDITOR /usr/local/bin/vim
#set -x ALL_PROXY socks5://127.0.0.1:1080
set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/zippo/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
. /usr/local/share/autojump/autojump.fish

# for the fuck
function __thefuck_repl -d 'Replace operators into fish-compatible'
    set -l tmp (echo $argv | sed 's/ && / ; and /g')
    echo $tmp | sed 's/ || / ; or /g'
end

function fuck -d 'Correct your previous console command'
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    thefuck $history[1] > $eval_script
    eval (__thefuck_repl (cat $eval_script))
    rm $eval_script
end
