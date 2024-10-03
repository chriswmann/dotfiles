# Enable the subsequent settings only in interactive sessions
case $- in
*i*) ;;
*) return ;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/chris/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="pete"

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

export SUDO_EDITOR=vim
export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_THEME='Adwaita-dark'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.aliases

# VIMRC=~/.config/.vimrc
EDITOR=nvim

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

source ~/credentials

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/chris/mambaforge/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/home/chris/mambaforge/etc/profile.d/conda.sh" ]; then
    . "/home/chris/mambaforge/etc/profile.d/conda.sh"
  else
    export PATH="/home/chris/mambaforge/bin:$PATH"
  fi
fi
unset __conda_setup

if [ -f "/home/chris/mambaforge/etc/profile.d/mamba.sh" ]; then
  . "/home/chris/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

. "$HOME/.cargo/env"

# Needed for zoom and zoom screen sharing
XDG_CURRENT_DESKTOP=gnome
QT_QPA_PLATFORM=xcb

shopt cdspell
shopt -s autocd

export QT_STYLE_OVERRIDE=adwaita
export PATH=~/.npm-global/bin:/usr/local/texlive/2023/bin/x86_64-linux:/usr/local/aws-cli/v2/2.15.40/bin/aws:/home/chris/.cargo/bin:$PATH
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
export DAGSTER_HOME=~/dagster
export PYRIGHT_PYTHON_FORCE_VERSION=latest

function frg {
  result=$(rg --ignore-case --color=always --line-number --no-heading "$@" |
    fzf --ansi \
      --color 'hl:-1:underline,hl+:-1:underline:reverse' \
      --delimiter ':' \
      --preview "bat --color=always {1} --theme='Solarized (light)' --highlight-line {2}" \
      --preview-window 'up,60%,border-bottom,+{2}+3/3,~3')
  file="${result%%:*}"
  linenumber=$(echo "${result}" | cut -d: -f2)
  if [ ! -z "$file" ]; then
    $EDITOR +"${linenumber}" "$file"
  fi
}

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(ssh-agent)"
source ~/shell_completions/just.bash
complete -C '/usr/local/bin/aws_completer' aws
. "$HOME/.rye/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
