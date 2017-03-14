#!/bin/bash

# Import utils.
source $PYESSV_WRITER_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "writing WCRP cmip6 cv ..."

	declare source=$1
	declare dest=$2

	python $PYESSV_WRITER_HOME/sh/write_wcrp_cmip6.py --source=$source --dest=$dest

	log "WCRP cmip6 cv written to "$dest
}

# Invoke entry point.
main $1 $2
