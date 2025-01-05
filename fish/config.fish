set -g fish_greeting

if status is-interactive
    starship init fish | source
end




function search_files
    set file (find . -type f | fzf)
    if test -n "$file"
        nvim "$file"
    end
end

function fzf_cd
    # Search for directories starting from ~/
    set -l dir (find ~/ -type d 2>/dev/null | fzf --height 40% --reverse --prompt="Select directory: ")

    # If a directory is selected, cd into it
    if test -n "$dir"
        cd "$dir"
    end
end


bind \cd fzf_cd



# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
