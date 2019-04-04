
set HOME ~/
set ANDROID_HOME $HOME/Android/Sdk


function runc
	set name $argv;
	and gcc $name.c -o $name;
	and eval ./$name > $name.out;
	and rm $name;
	and cat $name.out
end

function runpy
	set name $argv;
	and python $name.py > $name.out; and cat $name.out
end

function psalms
        python ~/psalms.py | grep --color .
end

function news-everyday
        python ~/Dropbox/Programas/PythonTraining/NewsEveryday/main.py -r google-news-br | grep --color .
end

alias wifi-connect='nmcli device wifi connect -a'
alias wifi-list='nmcli device wifi list'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT1'

alias starti3='startx /usr/bin/i3'

alias vim='nvim'

alias ufscar='cd ~/Dropbox/UFSCar'
alias windows='cd /run/media/danielm/Acer/Users/daani'

alias vim-config='vim ~/.vimrc'
alias fish-config='vim ~/.config/fish/config.fish'
alias i3-config='vim ~/.config/i3/config'
alias dunst-config='vim ~/.config/dunst/dunstrc'
alias rofi-config='vim ~/.config/rofi/config'
alias polybar-config='vim ~/.config/polybar/config'

alias lol='fortune | cowsay -f tux | lolcat'
alias star_wars='telnet towel.blinkenlights.nl'

alias ranger='ranger --choosedir="$HOME/.rangerdir"; cd (cat $HOME/.rangerdir)'

#### GIT #####

#set normal (set_color normal)
#set magenta (set_color magenta)
#set yellow (set_color yellow)
#set green (set_color green)
#set red (set_color red)
#set gray (set_color -o black)

# Fish git prompt
#set __fish_git_prompt_showdirtystate 'yes'
#set __fish_git_prompt_showstashstate 'yes'
#set __fish_git_prompt_showuntrackedfiles 'yes'
#set __fish_git_prompt_showupstream 'yes'
#set __fish_git_prompt_color_branch yellow
#set __fish_git_prompt_color_upstream_ahead green
#set __fish_git_prompt_color_upstream_behind red

# Status Chars
#set __fish_git_prompt_char_dirtystate '⚡'
#set __fish_git_prompt_char_stagedstate '→'
#set __fish_git_prompt_char_untrackedfiles '☡'
#set __fish_git_prompt_char_stashstate '↩'
#set __fish_git_prompt_char_upstream_ahead '+'
#set __fish_git_prompt_char_upstream_behind '-'


#function fish_prompt
#  set last_status $status
#
#  set_color $fish_color_cwd
#  printf '%s' (prompt_pwd)
#  set_color normal
#
#  printf '%s ' (__fish_git_prompt)

#  set_color normal
#end
