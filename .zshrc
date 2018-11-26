# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Only show username@hostname prefix on a remote server
[[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="rlustin"

HISTFILE=$HOME/.histfile
HISTSIZE=10000
SAVEHIST=10000
WORDCHARS="${WORDCHARS:s#/#}"
WORDCHARS="${WORDCHARS:s#.#}"

# never ever beep ever
setopt NO_BEEP

# Disable command auto-correction.
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

export PATH="$PATH:$HOME/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin:$HOME/git/moz-git-tools:$HOME/git/tools"

export PATH="$PATH:$HOME/.cargo/bin"

source $ZSH/oh-my-zsh.sh

alias git='nocorrect git'

git-find() {
  git ls-files | grep $1
}

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-eighties.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export CT_GIT_ROOT=$HOME/git
export PATH="$PATH:$HOME/.margobank/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
. $HOME/.asdf/asdf.sh

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
