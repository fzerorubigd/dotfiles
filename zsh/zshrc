source /etc/profile
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fino"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn archlinux ssh-agent extract taskwarrior zsh-syntax-highlighting phing history-substring-search vagrant github lol composer docker)

source $ZSH/oh-my-zsh.sh
source /etc/profile.d/autojump.zsh
bindkey -e
# Customize to your needs...
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/share/java/apache-ant/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/qt/bin:/home/f0rud/cross/bin
export EDITOR="emacs -nw -q --no-site-file -eval '(setq make-backup-files nil)'"
alias fa='setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ir'
alias uncap='~/bin/uncaps.sh'
alias -s conf=nano
alias -g L='|less'
alias -g G='|grep'
alias -g ADDR='|grep "http://*"'

alias _start='sudo systemctl start'
alias _stop='sudo systemctl stop'
alias _restart='sudo systemctl restart'
alias _status='sudo systemctl status'
alias _reload='sudo systemctl daemon-reload'
alias _enable='sudo systemctl enable'
alias _disable='sudo systemctl disable'

alias p='proxychains'
alias e="emacs -nw -q --no-site-file -eval '(setq make-backup-files nil)'"
alias se="sudo emacs -nw -q --no-site-file -eval '(setq make-backup-files nil)'"

export GOPATH=~/go

alias rmpyc='find . -name "*.pyc" -exec rm -rf {} \;'

alias sl='/usr/bin/sl'

alias which='/usr/bin/which'

alias v='vagrant'

export GPG_TTY='tty'
alias mpcplaylist='mpc playlist -f " [%position%) %artist% - %title%]"'
alias gg=gitg

alias cowize="export https_proxy=http://127.0.0.1:7072 &&  export http_proxy=http://127.0.0.1:7072"

command_not_found_handler() {
  persian=( ض ص ث ق ف غ ع ه خ ح ج چ ش س ی ب ل ا ت ن م ک گ ظ ط ز ر ذ د پ و ۱ ۲ ۳ ۴ ۵ ۶ ۷ ۸ ۹ ۰ ! ٬ ٫ ﷼ ٪ × ، ؛ )
  english=( q w e r t y u i o p \[ \] a s d f g h j k l \; \' z x c v b n m , 1 2 3 4 5 6 7 8 9 0 ! @ \# \$ % \^ \& \" )
  len=`echo ${#english[*]}`
  arg=$@
  prog=$1
  arg=${arg/$prog/}
  for ((i=1 ; i < $len ; i++)) do
    arg=${arg//${persian[$i]}/${english[$i]}}
    prog=${prog//${persian[$i]}/${english[$i]}}
  done
  
  /usr/bin/which --skip-alias "$prog" &> /dev/null
  if [ "$?" = "0" ];then
	echo -e "Try to run $prog$arg \n"
	`echo $prog$arg`
     return 0
  else
      return 127
  fi

}


# TMUX
if [ -z `tty | grep tty` ] ; then
    if which tmux 2>&1 >/dev/null; then
        # if no session is started, start a new session
        test -z ${TMUX} && tmux
 
        # when quitting tmux, try to attach
        while test -z ${TMUX}; do
	    echo "Press enter to attach to other tmux instanse, or anything then enter to just leave"
	    read attachto
	    if [ -z $attachto ]; then
		tmux attach || break
            else
		break
	    fi
        done
    fi;
fi;
