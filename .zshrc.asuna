# load asuna-bootstrap[git@github.com:danielwii/asuna-bootstrap.sh.git
# curl https://raw.githubusercontent.com/danielwii/asuna-bootstrap.sh/master/install.sh | sh
export ASUNA_DIR="$HOME/.asuna"
[ -s "$ASUNA_DIR/bootstrap/bootstrap.sh" ] && \. "$ASUNA_DIR/bootstrap/bootstrap.sh"

sh_log 'init'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory notify
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

export LANG=en_US.UTF-8 

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir dir_writable virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs history)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="➜ "

POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='cyan'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='magenta'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

sh_log 'load zplug...'
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-history-substring-search"

# zplug "lib/completion",   from:oh-my-zsh
# zplug "lib/correction",   from:oh-my-zsh
# zplug "lib/directories",  from:oh-my-zsh
# zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/*", 			from:oh-my-zsh
zplug "plugins/git", 	from:oh-my-zsh
zplug "plugins/z", 		from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh

zplug "supercrabtree/k"

if ! zplug check --verbose; then
    # printf "Install? [y/N]: "
    # if read -q; then
    #     sh_log; zplug install
    # fi
    zplug install
fi
sh_log 'load zplug plugins...'
zplug load

# -- setup kube-ps1 --
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1
kubeoff

# -- reset ls colors --
# export LSCOLORS='*.html=95:*.php=1;32:di=1;94:no=00:fi=00:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=1;4;104;37:st=37;44:ex=0;4:*.tar=01;31:*.tgz=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.png=01;35:';
export LSCOLORS=

export FLUTTER_HOME=$HOME/Development/sdks/flutter
export PATH=$FLUTTER_HOME/bin:$PATH

# -- brew sbin --
export PATH="/usr/local/sbin:$PATH"

# -- setup nvm --
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# -- setup jenv & java --
sh_log 'load jenv...'
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# -- k8s helm
sh_log 'load helm...'
export HELM_HOME=$HOME/.helm
source <(helm completion zsh)

# -- setup thefuck
sh_log 'load thefuck...'
eval $(thefuck --alias)

# -- setup golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

# -- setup google-cloud-sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# -- alias --
sh_log 'load alias...'
alias l='exa -lahg --git --time-style long-iso'
alias ll='exa -lhg --git --time-style long-iso'
alias ls='exa -G'
alias java_homes='/usr/libexec/java_home -V'
alias java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
alias java10="export JAVA_HOME=`/usr/libexec/java_home -v 10`"
alias java11="export JAVA_HOME=`/usr/libexec/java_home -v 11`"

# -- proxy --
PROXY=http://127.0.0.1:8001
SOCK_PROXY=socks5://127.0.0.1:1081
NO_PROXY=10.*.*.*,192.168.*.*,*.local,localhost,127.0.0.1
alias proxy='export ALL_PROXY=$PROXY; export NO_PROXY=$NO_PROXY; export HTTP_PROXY=$PROXY; export HTTPS_PROXY=$PROXY;'
alias unsetproxy='unset ALL_PROXY; unset NO_PROXY; unset HTTP_PROXY; unset HTTPS_PROXY;'

sh_log 'Asuna Bootstrap: >_____________,.<'
