bindkey -e

bindkey "^[[1~" beginning-of-line   # HOME
bindkey "^[[1;5C"  forward-word        # CTRL + ->
bindkey "^[[1;5D"  backward-word       # CTRL + <-
bindkey "^[[4~"  end-of-line         # END
bindkey "^[[3~"  delete-char         # Del
bindkey "^[[D"  backward-char       # <-
bindkey "^[[C"  forward-char        # ->
bindkey "^[[A"  history-substring-search-up
bindkey "^[[B"  history-substring-search-down
