set -g fish_greeting

if status is-interactive
    starship init fish | source
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


function search_files
    set file (find . -type f | fzf)
    if test -n "$file"
        nvim "$file"
    end
end
