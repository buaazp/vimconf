# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/zippo/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/zippo/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Alias
alias gitlog "git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset'"
alias gits "git status"
alias goget "gopm get -g -v"
alias gitref "git remote update origin --prune"
alias htop "sudo htop"
alias pipup "pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pip3up "pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias tailapi "multitail -s 2 -l \"ssh ol27 'tail -f /opt/tiger/everphoto/logs/everphoto-api.err'\" -l \"ssh ol28 'tail -f /opt/tiger/everphoto/logs/everphoto-api.err'\" -l \"ssh ol29 'tail -f /opt/tiger/everphoto/logs/everphoto-api.err'\" -l \"ssh ol30 'tail -f /opt/tiger/everphoto/logs/everphoto-api.err'\""
alias tailuploader "multitail -s 2 -l \"ssh ol164 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol165 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol166 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol167 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol168 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol169 'tail -f /opt/tiger/mimg/logs/uploader.err'\""
alias tailold "multitail -s 2 -l \"ssh ol12 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol13 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol14 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol31 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol32 'tail -f /opt/tiger/mimg/logs/uploader.err'\" -l \"ssh ol33 'tail -f /opt/tiger/mimg/logs/uploader.err'\""
alias tailconverter "multitail -s 2 -l \"ssh ol164 'tail -f /opt/tiger/mimg/logs/converter.err'\" -l \"ssh ol165 'tail -f /opt/tiger/mimg/logs/converter.err'\" -l \"ssh ol166 'tail -f /opt/tiger/mimg/logs/converter.err'\" -l \"ssh ol167 'tail -f /opt/tiger/mimg/logs/converter.err'\" -l \"ssh ol168 'tail -f /opt/tiger/mimg/logs/converter.err'\" -l \"ssh ol169 'tail -f /opt/tiger/mimg/logs/converter.err'\""
alias tailttuploader "multitail -s 2 -l \"ssh tt16 'tail -f /opt/tiger/mimg/logs/ttuploader.err'\" -l \"ssh tt17 'tail -f /opt/tiger/mimg/logs/ttuploader.err'\" -l \"ssh tt18 'tail -f /opt/tiger/mimg/logs/ttuploader.err'\" -l \"ssh tt19 'tail -f /opt/tiger/mimg/logs/ttuploader.err'\""

# for c/c++ build env
# set -x CXX /usr/local/bin/g++-4.9
# set -x CC /usr/local/bin/gcc-4.9
# set -x CPP /usr/local/bin/cpp-4.9

# set -x LD_LIBRARY_PATH "$HOME/develop/python/clib"
set -x PYTHONPATH $HOME/develop/python/mylibs:$HOME/develop/python/mosaic-dashboard:$HOME/develop/python

set -x OPENSSL_ROOT_DIR "/usr/local/opt/openssl"

# Set PATH with /usr/local at first place
set -x PATH $HOME/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin

# for golang env
set -x GOPATH $HOME/develop/GO
set -x GOBIN $GOPATH/bin
set -x GOROOT /usr/local/Cellar/go/1.5.3/libexec
set -x PATH $GOROOT/bin $GOBIN $PATH

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
