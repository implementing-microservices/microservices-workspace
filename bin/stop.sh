#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=msupandrunning

export wkdr=$PWD
cd $wkdr/ms-flights && make stop
cd $wkdr/ms-reservations && make stop

cd $wkdr
make proxystop
unset wkdr
