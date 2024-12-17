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
