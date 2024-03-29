export PATH="/usr/local/sbin:$PATH"
export BLOCKSIZE=1k

cd() { builtin cd "$@"; ll; }               # Always list directory contents upon cd

mcd() { mkdir -vp "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.            Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
    showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }

echo -en "\e]P0073642" #black
echo -en "\e]P1DC322F" #darkred
echo -en "\e]P2859900" #darkgreen
echo -en "\e]P3B58900" #brown
echo -en "\e]P4268BD2" #darkblue
echo -en "\e]P5D33682" #darkmagenta
echo -en "\e]P62AA198" #darkcyan
echo -en "\e]P7EEE8D5" #lightgrey
echo -en "\e]P8002B36" #darkgrey
echo -en "\e]P9CB4B16" #red
echo -en "\e]PA586E75" #green
echo -en "\e]PB657B83" #yellow
echo -en "\e]PC839496" #blue
echo -en "\e]PD6C71C4" #magenta
echo -en "\e]PE93A1A1" #cyan
echo -en "\e]PFFDF6E3" #white
clear #for background artifacting
