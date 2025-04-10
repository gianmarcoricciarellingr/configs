fish_add_path -g /home/linuxbrew/.linuxbrew/bin
fish_add_path -g /mnt/c/Users/GianmarcoRicciarelli/AppData/Local/Programs/Microsoft\ VS\ Code/bin

set -g fish_greeting

alias b="brew"
alias e="eza --long --header --all --all --group-directories-first"
alias g="git"
alias lg="lazygit"
alias u="brew upgrade && brew upgrade --casks --greedy && fisher update && brew cleanup"
alias v="nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start ssh-agent on login and add ssh github key
if not pgrep --full ssh-agent | string collect >/dev/null
    eval (ssh-agent -c | head -n2)

    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK

    ssh-add ~/.ssh/github
end

starship init fish | source
pyenv init - fish | source
