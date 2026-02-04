######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::cli(cmd, ...)
#
#  Args:
#	cmd -
#	... - 
#
#>
######################################################################
p6df::modules::cloudflare::warp::cli() {
  local cmd="$1"
  shift 1

  warp-cli "$cmd" "$@"
  p6_log "warp-cli $cmd $*"

  p6_return_void
}
