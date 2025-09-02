## Options

# Default command
# export FZF_DEFAULT_COMMAND=""

# Default options
#   TODO: pbcopy only works on macOS
#         Ctrl-/ does not work on WSL
#         Completion after aliases: ll, em
export FZF_DEFAULT_OPTS="
  --color=gutter:-1,pointer:7
  --exact
  --height=10
  --info=hidden
  --layout=reverse
  --preview 'echo {}' --preview-window down:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)+abort'"

# PS1_ESCAPED=$(printf '%q' "$PS1")

# Ctrl-R options
#   TODO: Fix prompt (note that FZF_CTRL_R_OPTS is evaluated only once!)
#         Toggle hidden files
#         Execute command immediately (without editing)
export FZF_CTRL_R_OPTS="
  --nth=2..
  --no-sort
  --prompt='$USER at `hostname -s` in $(pwd | sed "s,$HOME,~,g")$ '
  --preview 'echo {}' --preview-window down:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"
  # --tiebreak=index
  # --ansi --prompt='$PS1_ESCAPED'
  # --ansi --prompt=$(printf '%q' "$PS1")"

# Ctrl-T options
export FZF_CTRL_T_OPTS="
  --preview 'cat {}' --preview-window down:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-d:reload(find * -type d)'
  --bind 'ctrl-f:reload(find * -type f)'
  --bind 'ctrl-g:reload(eval "$FZF_DEFAULT_COMMAND")'
  --bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)+abort'"
  # --bind 'ctrl-s:become(emacs -nw {})'
  # --bind 'ctrl-v:become(vim {} < /dev/tty > /dev/tty)'

# Alt-C options
export FZF_ALT_C_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {} | pbcopy)+abort'"

# Completion trigger sequence
# export FZF_COMPLETION_TRIGGER='~~'

# Completion options
# export FZF_COMPLETION_OPTS='--border --info=inline'

## Functions

# Custom path completion
#
# Use fd for listing path candidates
# - The first argument to the function ($1) is the base path to start
#   traversal
# - See the source code (completion.{bash,zsh}) for the details
# _fzf_compgen_path() {
#   fd --hidden --follow --exclude ".git" . "$1"
# }

# Custom directory completion
#
# Use fd to generate the list for directory completion
# _fzf_compgen_dir() {
#   fd --type d --hidden --follow --exclude ".git" . "$1"
# }

# Custom command completion
#
# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
# _fzf_comprun() {
#   local command=$1
#   shift

#   case "$command" in
#     cd)           fzf --preview 'tree -C {} | head -200'   "$@" ;;
#     export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
#     ssh)          fzf --preview 'dig {}'                   "$@" ;;
#     *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
#   esac
# }


