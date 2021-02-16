#!/bin/bash

if [[ $(uname) == Darwin ]]; then
  # make sure libomp can be found by setupexp.py ...
  export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${PREFIX}/lib"
fi

$PYTHON setup.py -q install --single-version-externally-managed --record=record.txt

