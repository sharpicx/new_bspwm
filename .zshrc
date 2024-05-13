# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:/bin:/opt/google/chrome:$HOME/.local/share/gem/ruby/3.0.0/bin:/home/via/.cargo/bin:$PATH:/home/via/go/bin:/usr/lib/ruby/gems/3.0.0:/usr/share/run:$HOME/.local/share/node_modules/evilscan/bin:$HOME/.local/lib/python3.11/site-packages/BabelStrike
#/usr/lib/jvm/java-17-openjdk:/usr/lib/jvm/java-17-openjdk/bin:$HOME/random-stuff/pribadi:/var/lib/snapd/snap/bin:/home/via/.cargo/bin:$PATH:/home/via/go/bin:/usr/lib/ruby/gems/3.0.0:/usr/share/run
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export _JAVA_AWT_WM_NONREPARENTING=1
export KITTY_DISABLE_WAYLAND=1
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export TERM='xterm-kitty'
export HISTFILE=~/.zsh_history
export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='google-chrome-stable'
export MANPAGER="bat -l man -p -f"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mira"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf git archlinux)
ENABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="eza --icons=always"
alias tree="ls -lAT"
alias cat="bat --plain -f"
alias c="clear"
alias vim='nvim'
alias vi='nvim'
alias www="list_ips && sudo python3 -m http.server 80"
alias tun0="ip addr show dev tun0 | grep 'inet ' | cut -d' ' -f6"
alias wlan0="ip addr show dev wlan0 | grep 'inet ' | cut -d' ' -f6"
alias sizes='du -h --max-depth=1 | sort -hr | awk "{print $2, $1}"'
alias home='df -h /home/ | awk "NR==2{print $4}"'
alias system='df -h / | awk "NR==2{print $4}"'


alias chisel='/opt/bins/linux/chisel_amd64'
alias cme="sudo netexec"

#ferox() {
#    feroxbuster -A --no-state -B -E -g -u $@
#}

list_ips() {
    ip a show scope global | awk '/^[0-9]+:/ { sub(/:/,"",$2); iface=$2 } /^[[:space:]]*inet / { split($2, a, "/"); print "[\033[96m" iface"\033[0m] "a[1] }'
}


nmap_udp() {
    sudo nmap -sUCV --top-ports 20 -T4 -p- -v ${@}
    sudo nmap -sUCV --top-ports 20 -T4 -p- -v ${@}
}
fay() {
	packages=$(awk {'print $1'} <<< $(yay -Ss $1 | awk 'NR%2 {printf "\033[1;32m%s \033[0;36m%s\033[0m — ",$1,$2;next;}{ print substr($0, 5, length($0) - 4); }' | fzf -m --ansi))
	[ "$packages" ] && yay -S $(echo "$packages" | tr "\n" " ")
}

fzfman() {
	packages="$(awk {'print $1'} <<< $(pacman -Ss $1 | awk 'NR%2 {printf "\033[1;32m%s \033[0;36m%s\033[0m — ",$1,$2;next;}{ print substr($0, 5, length($0) - 4); }' | fzf -m --ansi --select-1))"
	[ "$packages" ] && pacman -S $(echo "$packages" | tr "\n" " ")
}
fixit() {
  mv ~/.zsh_history ~/.zsh_history_bad 
  strings -eS ~/.zsh_history_bad > ~/.zsh_history 
  fc -R ~/.zsh_history
  rm ~/.zsh_history_bad
}
cheat() {
  if [ $# -lt 1 ]; then 
    echo '[-] error, a argument is missing.'
  else 
    curl -s "cheat.sh/$1" | bat
  fi
}
smartdec() {
  if [ $# -lt 1 ]; then
    echo -e 'usage: smartdec <string>'
  else
    decrypt=$(python -c "import html; string = \"$1\"; print(html.unescape(string))")
    python -c "import urllib.parse; string = \"$decrypt\"; print(urllib.parse.unquote(string))"
  fi
}
diffing() {
  git diff --word-diff-regex=. $1 $2
}
urlenc() {
  case $1 in 
    plus)  python -c "import urllib.parse; string = '$2'; print(urllib.parse.quote_plus(string))"  ;;
    normal) python -c "import urllib.parse; string = '$2'; print(urllib.parse.quote(string))"    ;;
    *) echo -e "usage: urlencode [normal|plus] string\nby sharpicx"  ;;
  esac
}
urldec() {
  case $1 in 
    normal)
      python -c "import urllib.parse; string = '$2'; print(urllib.parse.unquote(string))"
      ;;
    plus)
      python -c "import urllib.parse; string = '$2'; print(urllib.parse.unquote_plus(string))"
      ;;
    *)
      echo -e "usage: urldecode [normal|plus] string"
      ;;
  esac
}
source /home/via/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/via/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-fzf-plugin/fzf.plugin.zsh
source /home/via/.oh-my-zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
autoload -Uz compinit
compinit
zcompile /home/via/.zshrc
source ~/.config/zsh/zsh-async/async.zsh
autoload -Uz add-zsh-hook

# hooks
do-ls() { emulate -L zsh; ls }
add-zsh-hook chpwd do-ls

