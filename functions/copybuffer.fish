function copybuffer --description "Copy current command line to clipboard"
    if not type -q wl-copy
        echo "Error: wl-clipboard is not installed. Run: sudo pacman -S wl-clipboard"
        return 1
    end

    set -l cmd (commandline)
    if test -n "$cmd"
        echo -n "$cmd" | wl-copy
        echo "Command line copied to clipboard."
    end
end
