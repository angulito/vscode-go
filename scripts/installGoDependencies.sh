#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"

if [[ "$(go version)" =~ "go version go1.8" ]]; then
	cp -r $DIR/../go-dependencies/1.8/* $DIR/../..
else
	cp -r $DIR/../go-dependencies/newer/* $DIR/..
fi

cd $DIR/..
dep ensure