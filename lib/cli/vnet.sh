######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::vnet::list()
#
#>
######################################################################
p6df::modules::cloudflare::warp::vnet::list() {

  p6df::modules::cloudflare::warp::cli vnet

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::vnet::current()
#
#>
######################################################################
p6df::modules::cloudflare::warp::vnet::current() {

  p6df::modules::cloudflare::warp::cli "warp-cli vnet | head -1"

  p6_return_void
}

######################################################################
#<
#
# Function: str vnet_id = p6df::modules::cloudflare::warp::vnet::_name_to_id(name)
#
#  Args:
#	name -
#
#  Returns:
#	str - vnet_id
#
#>
######################################################################
p6df::modules::cloudflare::warp::vnet::_name_to_id() {
  local name="$1"

  local vnet_id
  vnet_id=$(warp-cli vnet | awk -v name="$name" '
    /^  ID:/ { id = $2 }
    /^  Name:/ && $2 == name { print id; exit }
  ')

  p6_return_str "$vnet_id"
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::vnet::set(vnet)
#
#  Args:
#	vnet -
#
#>
######################################################################
p6df::modules::cloudflare::warp::vnet::set() {
  local vnet="$1"

  local vnet_id=$(p6df::modules::cloudflare::warp::vnet::_name_to_id "$vnet")

  p6df::modules::cloudflare::warp::status::disconnect
  p6df::modules::cloudflare::warp::cli vnet "$vnet_id"
  p6df::modules::cloudflare::warp::status::connect

  p6_return_void
}
