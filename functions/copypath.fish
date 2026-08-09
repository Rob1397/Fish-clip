function copypath --description "Copy absolute path of file or directory to clipboard"
    if not type -q wl-copy
        echo "Error: wl-clipboard is not installed. Run: sudo pacman -S wl-clipboard"
        return 1
    end

    set -l target (test -n "$argv[1]"; and echo "$argv[1]"; or echo ".")

    if not test -e "$target"
        echo "Error: '$target' does not exist."
        return 1
    end

    set -l abs_path (realpath "$target")
    echo -n "$abs_path" | wl-copy
    echo "Path copied to clipboard: $abs_path"
end
