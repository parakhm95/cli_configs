alias cbt="catkin build --this && source /home/pmg/git/cli_configs/ubuntu/merge_compile_commands_json.sh"
alias ctb="catkin build && source /home/pmg/git/cli_configs/ubuntu/merge_compile_commands_json.sh"
alias nb="nvim ~/.bashrc && source ~/.bashrc"
alias nc="nvim ~/git/cli_configs/ubuntu && source ~/.bashrc"
alias sb="source ~/.bashrc"
alias gbt="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gcm="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gds="git diff --staged"
alias fuck='sudo $(history -p !!)'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias flog="/home/pmg/git/cli_configs/ubuntu/git-forest.sh --all --date=relative --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --style=15"
alias office_off="xrandr --output DisplayPort-3 --off --output DisplayPort-4 --off --output eDP --primary --dpi 100"
alias office_on="xrandr --output eDP --mode 1920x1080 --primary --pos 3000x183 --rotate normal --dpi 100 --output DisplayPort-3 --mode 1920x1080 --dpi 100 --pos 1080x243 --rotate normal --dpi 100 --set \"TearFree\" \"on\" --output DisplayPort-4 --mode 1920x1080 --pos 0x0 --rotate left --set \"TearFree\" \"on\""
alias r=". ranger"
alias ra=". ranger"
xset r rate 240 70
alias home_on="xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --dpi 100 --set \"TearFree\" \"on\" --output DisplayPort-1 --mode 2560x1440 --dpi 110 --rate 164.80 --pos 1920x0 --rotate normal --set \"TearFree\" \"on\""
alias home_off="xrandr --output DisplayPort-1 --off"
alias second-brain="cd ~/git/second-brain"
# export PS1="[\e[1;32m\u\e[0m|\e[1;34m\W\e[0m]\e[1;31m\$ \e[0m"

eval `keychain --eval parakh`
setxkbmap -option caps:escape
alias weather="curl wttr.in/Prague"
# alias ffmpeg_gif="ffmpeg -ss 30 -t 3 -i randomated.mp4 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif"
