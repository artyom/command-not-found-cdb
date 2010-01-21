command_not_found_handle () {
	cdb -q -m $HOME/.cache/command-not-found.cdb $1 1>&2 && \
		echo "Command $1 can be found in packages listed above" 1>&2 || \
		echo "$1: command not found" 1>&2
	return 127
}
