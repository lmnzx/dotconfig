set fish_greeting
set pure_symbol_prompt ">"

eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx HOMEBREW_NO_ENV_HINTS TRUE
set -gx AWS_DEFAULT_PROFILE localstack 
set -gx UKC_TOKEN cm9ib3Qkc21hbGxpY2sudXNlcnMua3JhZnRjbG91ZDpYd0oxY1ROSkZURjR1N1NRWVN3YVZRTzRmaUh3SnJaeQ==

alias vim="nvim ."
alias ls="eza --icons=always"
alias cat="bat --theme=\"Catppuccin Mocha\""
alias f="fzf --preview 'bat --style=numbers --color=always --theme=\"Catppuccin Mocha\" {}' | xargs -n 1 nvim"
# alias fzf="fzf --preview 'bat --style=numbers --color=always --theme=\"Catppuccin Mocha\" {}'"
alias b="brew update && brew upgrade && brew cleanup && cargo install-update --all && opam update && opam upgrade && rustup update &&  npm up -g"
alias g="git"
alias lg="lazygit"
alias q="QHOME=~/.q rlwrap -r ~/.q/m64/q"
alias k="kubectl"
alias kctx="kubectx"
alias kn="kubens"
alias t="terraform"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "/opt/homebrew/opt/libpq/bin"
fish_add_path "$HOME/Library/Python/3.9/bin"
fish_add_path "$HOME/.iximiuz/labctl/bin"
fish_add_path "$HOME/.codelldb/adapter"

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:-1,bg:-1,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:-1 \
--multi"

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

source "$HOME/.cargo/env.fish"

zoxide init --cmd cd fish | source

test -r '/Users/lemon/.opam/opam-init/init.fish' && source '/Users/lemon/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

source "$HOME/.export-esp.sh"

direnv hook fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

fish_add_path -a /Users/lemon/.foundry/bin
