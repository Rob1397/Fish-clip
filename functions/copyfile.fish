function copyfile --description "Copy contents of a file to clipboard"
    if not type -q wl-copy
        echo "Error: wl-clipboard is not installed. Run: sudo pacman -S wl-clipboard"
        return 1
    end

    if test -z "$argv[1]"
        echo "Usage: copyfile <filename>"
        return 1
    end

    if not test -f "$argv[1]"
        echo "Error: '$argv[1]' is not a valid file."
        return 1
    end

    wl-copy < "$argv[1]"
    echo "Contents of '$argv[1]' copied to clipboard."
end
