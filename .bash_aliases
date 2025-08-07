# list of aliases
alias cat='cat -n'
alias svim="fzf --preview 'cat -n {}' | xargs nvim"
alias scd='cd $(find -type d | fzf --preview "ls -a {}")'
alias spac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias roms-cli="~/./.scripts/rom-cli.sh"
alias neofetch="fastfetch"
