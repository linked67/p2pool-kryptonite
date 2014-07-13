#!/bin/sh
SERVICE='python ./run_p2pool.py --net kryptonite'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen  -m -S screenkryp python ./run_p2pool.py --net kryptonite --give-author 0 --disable-upnp -f 1 -a KHNh7rHmi8auqxMJAwZ1P5N2vh6QTjRY28

	wait
fi
