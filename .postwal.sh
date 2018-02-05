#!/bin/sh

cd ~/.local/share/albert/org.albert.frontend.boxmodel.widgets/themes;
sassc wal.scss > wal.qss;
killall albert;
wait $!;
albert &
echo "done";
