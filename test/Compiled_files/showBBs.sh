#!/bin/bash
FILENAME="$1"
FUNCTIONNAME="$2"
opt --disable-output -dot-cfg --cfg-dot-filename-prefix=cfg $FILENAME
dot -Tpdf cfg.$FUNCTIONNAME.dot -o cfg.pdf