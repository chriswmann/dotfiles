# some more ls aliases
alias ...='cd ../../'                       # Go back 2 directory levels
alias ..='cd ../'                           # Go back 1 directory level
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias c='clear'                             # c:            Clear terminal display
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias l='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias node='nodejs'
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias redshift='psql "host=$REDSHIFT_HOST user=$REDSHIFT_USER dbname=$REDSHIFT_DB port=$REDSHIFT_PORT password=$REDSHIFT_PASSWORD"'
alias show_options='shopt'                  # Show_options: display bash options settings
alias which='type -all'                     # which:        Find executables
alias ~="cd ~"                              # ~:            Go Home
cd() { builtin cd "$@"; l; }               # Always list directory contents upon 'cd'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias l='ls -FGlAhp --color=auto'
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias vim='nvim'
