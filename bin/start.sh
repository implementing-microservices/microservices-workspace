#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=msupandrunning

export wkdr=$PWD
cd $wkdr/ms-flights && make start
cd $wkdr/ms-reservations && make start

cd $wkdr
make proxystart

unset wkdr
