#!/bin/bash

if [[ "$1" != "runserver" ]]; then
  exec $@
fi

python db.py
exec python runserver.py