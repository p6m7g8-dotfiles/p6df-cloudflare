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
# Function: p6df::modules::cloudflare::external::brews()
#
#>
######################################################################
p6df::modules::cloudflare::external::brews() {

  p6df::core::homebrew::cli::brew::install cloudflare-warp --cask

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::mcp()
#
#>
######################################################################
p6df::modules::cloudflare::mcp() {

  p6_js_npm_global_install "@cloudflare/mcp-server-cloudflare"

  p6df::modules::anthropic::mcp::server::add "cloudflare" "npx" "-y" "@cloudflare/mcp-server-cloudflare"
  p6df::modules::openai::mcp::server::add "cloudflare" "npx" "-y" "@cloudflare/mcp-server-cloudflare"

  p6_return_void
}

######################################################################
#<
#
# Function: words cloudflare $CLOUDFLARE_API_TOKEN = p6df::modules::cloudflare::profile::mod()
#
#  Returns:
#	words - cloudflare $CLOUDFLARE_API_TOKEN
#
#  Environment:	 CLOUDFLARE_API_TOKEN
#>
######################################################################
p6df::modules::cloudflare::profile::mod() {

  p6_return_words 'cloudflare' "$"
}
