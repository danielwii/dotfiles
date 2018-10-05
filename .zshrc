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

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs public_ip history)
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

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-history-substring-search"
zplug "lib/*", from:oh-my-zsh
# zplug "lib/completion",   from:oh-my-zsh
# zplug "lib/correction",   from:oh-my-zsh
# zplug "lib/directories",  from:oh-my-zsh
# zplug "lib/key-bindings", from:oh-my-zsh
zplug "supercrabtree/k"
zplug "plugins/z", from:oh-my-zsh
# zplug "knu/z", use:z.sh, defer:2

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# -- reset ls colors --
# export LSCOLORS='*.html=95:*.php=1;32:di=1;94:no=00:fi=00:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=1;4;104;37:st=37;44:ex=0;4:*.tar=01;31:*.tgz=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.png=01;35:';
export LSCOLORS=

export FLUTTER_HOME=$HOME/Development/sdks/flutter
export PATH=$FLUTTER_HOME/bin:$PATH

# -- setup nvm --
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

