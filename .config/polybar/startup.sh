killall -q polybar

# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

PBMONITOR=$(polybar -m | tail -1 | sed -e 's/:.*$//g')

if [ $PBMONITOR = "DVI-I-0" ]
then
	polybar left &
	polybar right &
fi

if [ $PBMONITOR = "eDP1" ]
then
	polybar laptop &
fi


