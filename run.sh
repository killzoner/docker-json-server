#!/bin/sh

args="$@"

file=/data/db.json
if [ -f $file ]; then
    echo "Found db.json, trying to open"
    args="$args db.json"
fi

file=/data/routes.json
if [ -f $file ]; then
    echo "Found routes.json, trying to open"
    args="$args -r routes.json"
fi

file=/data/json-server.json
if [ -f $file ]; then
    echo "Found json-server.json, trying to open"
    args="$args -c json-server.json"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi

json-server $args
