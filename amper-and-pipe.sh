#!/bin/sh
[ $X -ne 0 ] && echo "X isn't zero" || echo "X is zero"
[ -f $X ] && echo "X is a file" || echo "X is not a file"
[ -n $X ] && echo "X is of non-zero lenght" || echo "X is of zero lenght"
[ $X ] && echo "The X IS" || echo "The X ISN'T"
