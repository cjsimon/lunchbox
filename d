#!/bin/bash
COMMAND="$1"
ARGS="${@:2}"
./scripts/"$COMMAND" "$ARGS"

