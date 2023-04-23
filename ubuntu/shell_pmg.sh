
alias ods="source ~/mrs_workspace/src/simulation/example_tmux_scripts/one_drone_gps/start.sh"
alias cbt="catkin build --this && source /home/pmg/git/cli_configs/ubuntu/merge_compile_commands_json.sh"
alias ctb="catkin build && source /home/pmg/git/cli_configs/ubuntu/merge_compile_commands_json.sh"
alias snb="sudo nano ~/.bashrc"
alias sb="source ~/.bashrc"
alias smw="source ~/Documents/mrs_ws/devel/setup.bash"
alias gbt="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gs="git status"
alias gd="git diff"
alias fuck='sudo $(history -p !!)'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias flog="/home/pmg/git/cli_configs/ubuntu/git-forest.sh --all --date=relative --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --style=15"
alias office_off="xrandr --output DP-1-1-3 --off --output DP-1-1-2 --off --output eDP-1-1 --primary"
alias office_on="xrandr --output eDP-1-1 --mode 1920x1200 --pos 3000x183 --rotate normal --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output DP-1-1-1 --off --output DP-1-1-2 --primary --mode 1920x1080 --pos 1080x243 --rotate normal --set \"Broadcast RGB\" \"Full\" --output DP-1-1-3 --mode 1920x1080 --pos 0x0 --rotate left --set \"Broadcast RGB\" \"Full\""
alias r=". ranger"
alias ra=". ranger"
xset r rate 240 70
alias home_on="xrandr --output eDP-1-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --mode 2560x1440 --rate 164.80 --pos 1920x0 --rotate normal --set \"Broadcast RGB\" \"Full\" --output DP-1-1-1 --off --output DP-1-1-2 --off --output DP-1-1-3 --off"
alias home_off="xrandr --output DP-1-3 --off"
alias second-brain="cd ~/git/second-brain"
# export PS1="[\e[1;32m\u\e[0m|\e[1;34m\W\e[0m]\e[1;31m\$ \e[0m"

eval `keychain --eval parakh`
setxkbmap -option caps:escape
alias weather="curl wttr.in/Prague"
