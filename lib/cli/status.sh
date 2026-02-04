######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::status::connect()
#
#>
######################################################################
p6df::modules::cloudflare::warp::status::connect() {

  p6df::modules::cloudflare::warp::cli connect

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::status::disconnect()
#
#>
######################################################################
p6df::modules::cloudflare::warp::status::disconnect() {

  p6df::modules::cloudflare::warp::cli disconnect

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cloudflare::warp::status::show()
#
#>
######################################################################
p6df::modules::cloudflare::warp::status::show() {

  p6df::modules::cloudflare::warp::cli status

  p6_return_void
}
