function explicit_alias {
  alias=$1
  command=$2
  alias $alias='echo $ $command; $command'
}

explicit_alias "explicit" "echo 'this is an explicit_alias'"
explicit

explicit_alias "dotfiles" "cd ~/dev/dotfiles; mvim"
dotfiles
