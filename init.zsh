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
