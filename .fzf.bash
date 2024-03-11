## Options

# Ctrl-R options
export FZF_CTRL_R_OPTS="
  --height=10
  --info=hidden
  --layout=reverse
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"

# Ctrl-T options
export FZF_CTRL_T_OPTS="
  --height=10
  --info=hidden
  --layout=reverse
  --preview 'cat {}' --preview-window down:5:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-d:reload(find * -type d)'
  --bind 'ctrl-f:reload(find * -type f)'"

# Alt-C options
export FZF_ALT_C_OPTS="
  --height=10
  --info=hidden
  --layout=reverse"

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


