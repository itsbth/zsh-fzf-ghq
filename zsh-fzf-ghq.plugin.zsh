function ghq-fzf() {
  local target_dir=$(ghq list | \
	  fzf --query="$LBUFFER" \
	  --preview='f() { ([ -f "$1/README.md" ] && highlight -O ansi "$1/README.md") || ls --color=always "$1"; }; \
	    f $(ghq list --full-path --exact "{}")'
  )
  target_dir=$(ghq list --exact --full-path "$target_dir")

  if [ -n "$target_dir" ]; then
    BUFFER="cd ${target_dir}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf
