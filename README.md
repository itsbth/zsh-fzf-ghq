# zsh-fzf-ghq - fork

[My](https://github.com/itsbth) fork of
[migutw42/zsh-fzf-ghq](https://github.com/migutw42/zsh-fzf-ghq) adding previews
based on README files.

If README.md exists, it tries [glow](https://github.com/charmbracelet/glow),
[mdcat](https://github.com/lunaryorn/mdcat), highlight, cat in order, using the
first available.  If there's no README.md, it simply shows a list of files.

Add [ghq](https://github.com/motemen/ghq) keybindings for zsh shell. 

## Requirements

* [ghq](https://github.com/motemen/ghq)
* [fzf](https://github.com/junegunn/fzf)

## installation

### Zplug

```
zplug itsbth/zsh-fzf-ghq
```

## Usage

|Keybindings|       Behaviors      |
|-----------|----------------------|
|Ctrl-g     |Select the repository.|

## TODO
* [ ] completion
* [ ] selector options
* [ ] hook function on selecting
* [ ] screenshots


