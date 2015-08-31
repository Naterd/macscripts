#!/bin/bash

ParallelsApp=$(find /Volumes -maxdepth 2 -iname *Parallels*.app 2>/dev/null)
ParallelsTmp="/var/tmp/Parallels Desktop.app"
rm -rf "$ParallelsTmp"
cp -R "$ParallelsApp" "$ParallelsTmp"
chown -R 501:nstewart "$ParallelsTmp"
chmod -R ug+rwX,o+rX-w "$ParallelsTmp"
chflags nohidden "$ParallelsTmp"
