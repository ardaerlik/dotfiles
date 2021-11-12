PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
PATH=$PATH:/usr/local/share/dotnet:~/.dotnet/tools
export PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/Commands

export ZSH="/Users/ardaerlik/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=( 
	git
	colored-man-pages
	macos
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Config Files
alias zshrc="vi ~/.zshrc"
alias vimrc="vi ~/.vimrc"
alias p10krc="vi ~/.p10k.zsh"
alias gitconfig="vi ~/.gitconfig"

# Appplications
alias eclipse="open -a Eclipse"
alias chrome="open -a Google\ Chrome"
alias monitor="open -a Activity\ Monitor"
alias disk="open -a Disk\ Utility"
alias pycharm="open -a PyCharm"
alias note="open -a Notes"
alias sublime="open -a Sublime\ Text"
alias sysinfo="open -a System\ Information"
alias settings="open -a System\ Preferences"
alias term="open -a Terminal"
alias txt="open -a TextEdit"
alias vbox="open -a VirtualBox"

# Websites
alias github="open -a 'Google Chrome' https://github.com/ardaerlik"

# Network
alias ip="ipconfig getifaddr en0"
alias net="arp -a"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic 
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
