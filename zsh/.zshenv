# Functions here are called in scripts,
# rather than interactive shells only
function proxy_test() {
  if nc -z -G 1 $1 $2; then  # try to connect to host $1 in port $2 with 1sec of connection timeout
    exec nc $1 $2  # try to connect directly
  else
    exec corkscrew $3 $4 $1 $2  # set up proxy connection
  fi
}
