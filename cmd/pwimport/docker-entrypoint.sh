#! /bin/bash
set -e

ARGS=""

if [ "x$PWI_HOST" != 'x' ]; then
	ARGS="$ARGS -hostname $PWIHOST"
fi

if [ "x$PWI_INFLUX_DB" != 'x' ]; then
	ARGS="$ARGS -influx-database $PWI_INFLUX_DB"
fi

if [ "x$PWI_INFLUX_MEASUREMENT" != 'x' ]; then
	ARGS="$ARGS -influx-measurement $PWI_INFLUX_MEASUREMENT"
fi

if [ "x$PWI_INFLUX_URL" != 'x' ]; then
	ARGS="$ARGS -influx-url $PWI_INFLUX_URL"
fi

if [ "x$PWI_POLL" != 'x' ]; then
	ARGS="$ARGS -poll $PWI_POLL"
fi

/pwimport $ARGS


