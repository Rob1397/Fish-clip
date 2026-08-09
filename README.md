# clip

A lightweight Fish shell plugin to copy file paths, file contents, and command buffers to the clipboard on Linux (Wayland).

## Features
- `copypath [target]`: Copy absolute path of current directory or specified file/folder.
- `copyfile <file>`: Copy entire file contents to clipboard.
- `copybuffer`: Copy current command line typed in the prompt.

## Dependencies
- `wl-clipboard` (install via `sudo pacman -S wl-clipboard`)

## Installation
```fish
fisher install Rob1397/clip
```
