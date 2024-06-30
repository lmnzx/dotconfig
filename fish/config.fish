set fish_greeting
set hydro_symbol_prompt ">"

eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx HOMEBREW_NO_INSTALL_CLEANUP TRUE

set PATH "$HOME/.bin:$PATH"

set PATH "$HOME/.cargo/bin:$PATH"

set PATH "/Users/lemon/Projects/funpga/oss-cad-suite/bin:$PATH"

set PATH "/Users/lemon/go/bin:$PATH"

alias mamba="micromamba"
alias cat="bat --theme=base16"
alias q="QHOME=~/q rlwrap -r ~/q/m64/q"
alias vim="nvim"
alias fzf="fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 nvim"
alias ls="exa"

# rose pine fzf 
set -Ux FZF_DEFAULT_OPTS "
	--color=fg:#908caa,bg:#191724,hl:#ebbcba
	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
	--color=border:#403d52,header:#31748f,gutter:#191724
	--color=spinner:#f6c177,info:#9ccfd8,separator:#403d52
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/opt/homebrew/opt/micromamba/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/Users/lemon/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# opam configuration
source /Users/lemon/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Wasmer
export WASMER_DIR="/Users/lemon/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# zoxide
zoxide init --cmd cd fish | source

source ~/.xmake/profile

# Added by Radicle.
export PATH="$PATH:/Users/lemon/.radicle/bin"
