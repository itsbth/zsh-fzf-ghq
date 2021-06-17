function ghq-fzf() {
  local target_dir=$(
    ghq list |
      fzf --query="$LBUFFER" \
	--preview='pr() { glow -s dark "$1" || mdcat "$1" || highlight -O ansi "$1" || cat "$1" }; \
	  f() { ([ -f "$1/README.md" ] && pr "$1/README.md") || ls --color=always "$1"; }; \
	  f $(ghq list --full-path --exact {})'
  )

  if [ -n "$target_dir" ]; then
    target_dir=$(ghq list --exact --full-path "$target_dir")
    BUFFER="cd ${target_dir}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf
