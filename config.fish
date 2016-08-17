# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

# Customize Oh My Fish configuration path.
# set -gx OMF_CONFIG $HOME/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Alias
alias gitlog "git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset'"
alias gits "git status"
alias gitref "git remote update origin --prune"
alias htop "sudo htop"
alias pipup "pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip install -U"
alias pip3up "pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip3 install -U"
alias service "brew services"

# for c/c++ build env
# set -x CXX /usr/local/bin/g++-4.9
# set -x CC /usr/local/bin/gcc-4.9
# set -x CPP /usr/local/bin/cpp-4.9
set -x PKG_CONFIG_PATH $HOME/local/libpng/lib/pkgconfig:$HOME/local/imagick/lib/pkgconfig

# set -x LD_LIBRARY_PATH "$HOME/develop/python/clib"
set -x PYTHONPATH $HOME/develop/python/pylib:$HOME/develop/python/flask-admin-libs:$HOME/develop/python:$HOME/develop/toutiao

set -x LDFLAGS -L/usr/local/opt/openssl/lib
set -x CPPFLAGS -I/usr/local/opt/openssl/include
set -x OPENSSL_ROOT_DIR "/usr/local/opt/openssl"

# Set PATH with /usr/local at first place
set -x PATH $HOME/.pyenv/shims $HOME/bin $HOME/.cargo/bin /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin

# for golang env
set -x GOPATH $HOME/develop/go
set -x GOBIN $GOPATH/bin
set -x GOROOT /usr/local/opt/go/libexec
set -x PATH $GOROOT/bin $GOBIN $PATH
set -x CGO_ENABLED 0

# for rust env
set -x RUST_SRC_PATH $HOME/develop/rust/rust-lang/src

# Set git_editor as the private vim
set -x GIT_EDITOR /usr/local/bin/vim
set -x HOMEBREW_EDITOR /usr/local/bin/vim

# for protobuf env
set -x PATH_GOGOPROTOBUF $GOPATH/src/github.com/gogo/protobuf
set -x PATH_PROTOBUF $PATH_GOGOPROTOBUF:$PATH_GOGOPROTOBUF/protobuf:.

# for docker env
# set -x ALL_PROXY socks5://127.0.0.1:1080
# set -x DOCKER_HOST tcp://192.168.59.103:2376
# set -x DOCKER_CERT_PATH $HOME/.boot2docker/certs/boot2docker-vm
# set -x DOCKER_TLS_VERIFY 1

# Load autojump configuration.
. /usr/local/share/autojump/autojump.fish

# Functions for the fuck
function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_command $history[1]
    thefuck $fucked_up_command > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_command
    end
end
