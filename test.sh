#!/bin/bash

set -xe

DIR=$1

$DIR/echo_server &
$DIR/echo_client &

sleep 10


