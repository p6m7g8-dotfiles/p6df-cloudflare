# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::cloudflare::deps()
#
#>
######################################################################
p6df::modules::cloudflare::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::external::brew()
#
#>
######################################################################
p6df::modules::cloudflare::external::brew() {

  p6df::core::homebrew::cli::brew::install cloudflare-warp --cask

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::cloudflare::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}
