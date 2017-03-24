echo "== Hava a nice day! Terry =="
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump git textmate ruby)


source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
source $HOME/.profile


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias sshaly="ssh root@120.24.165.59"
alias sshdrop="ssh root@162.243.155.17"
# alias for xcode to open a project file
alias xcode="open *.xcodeproj"
alias xcodew="open *.xcworkspace"
# Activate fuzzy mode for Xcode 7. See https://twitter.com/hamzasood/status/621739073108111360
alias xcfuzzy="defaults write com.apple.dt.Xcode IDEWorkaroundForRadar6288283 -int 3"
alias xcfuzzyoff="defaults delete com.apple.dt.Xcode IDEWorkaroundForRadar6288283"
alias rubyproto="ruby /Users/thuai/Documents/MiU/MiU-iOS-Client/MiU/scripts/proto/generate.rb"
alias rm="rm -i"
alias pod_update="pod update --no-repo-update"
alias pod_install="pod install --no-repo-update"
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias synx_nsname='synx --no-sort-by-name'

# run autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#
# run boxen
#[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
#


# use vim in zsh
# bindkey -v
# bindkey -M viins 'jj' vi-cmd-mode
# bindkey '^R' history-incremental-search-backward
# User configuration


# config for tmux
###############################
tmux_init()
{
		tmux new-session -s "kumu" -d -n "local"    # 开启一个会话
		tmux new-window -n "other"          # 开启一个窗口
		tmux split-window -h                # 开启一个竖屏
		tmux split-window -v "top"          # 开启一个横屏,并执行top命令
		tmux -2 attach-session -d           # tmux -2强制启用256color，连接已开启的tmux
}
# 判断是否已有开启的tmux会话，没有则开启
#if which tmux 2>&1 >/dev/null; then
#		test -z "$TMUX" && (tmux attach || tmux_init)
#fi
###############################


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# command line of add gitignore file
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# history of shell command which sort by frequence
# function h(){
#     history | grep --color=always $1 | awk '{$1="";print $0}' | # 查找关键字，去掉左侧的是数字 \
#     sort | uniq -c | sort -rn | awk '{$1="";print NR " " $0}' | # 先去重（需要排序）然后根据次数排序，再去掉次数 \
#     tee ~/.histfile_color_result | sed -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g" |  # 把带有颜色的结果写入临时文件，然后去除颜色 \
#     awk '{$1="";print "function " NR "() {" $0 "; echo \": $(date +%s):0;"$0"\" >> ~/.histfile }"}' | # 构造 function，把 $0 写入到 histfile 中 \
#     {while read line; do eval $line &>/dev/null; done}  # 调用 eval，让 function 生效
#     cat ~/.histfile_color_result | sed '1!G;h;$!d' # 倒序输出，更容易看到第一条
# }
