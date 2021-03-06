############
#  EDITOR  #
############
# don't set it to "macvim", zsh has troubles with double-aliases
export EDITOR="vim -p" # -p = 1 tab/file
alias vi=$EDITOR
alias j=$EDITOR # one less keystroke, plus: HOME ROW
alias svi="sudo $EDITOR"

# Use non-Macvim for crontab -e
alias crontab="EDITOR=vim crontab"

function viw {
  local location=$(which "$1")
  if [[ -f "$location" ]]; then
    $EDITOR "$location"
  else
    echo "$location isn't a file."
  fi
}
