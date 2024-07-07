alias nb="nvim ~/.zshrc && source ~/.zshrc"
alias nc="nvim ~/git/cli_configs/macos && source ~/.zshrc"
alias sb="source ~/.zshrc"
alias gbt="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gcm="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gds="git diff --staged"
alias fuck='sudo $(history -p !!)'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias flog="~/git/cli_configs/macos/git-forest.sh --all --date=relative --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --style=15"
alias r=". ranger"
alias ra=". ranger"
# xset r rate 240 70
alias second-brain="cd ~/git/second-brain"

# eval `keychain --eval parakh`
# setxkbmap -option caps:escape
alias weather="curl wttr.in/Prague"
# alias ffmpeg_gif="ffmpeg -ss 30 -t 3 -i randomated.mp4 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif"
export VISUAL="nvim"
export EDITOR="nvim"
# PS1="%n@%m %1~ %#"
PROMPT='%B%F{51}%n@%m%f%b %3d :~$ '

