#!/bin/bash
file="$(cmus-remote -C 'echo {}')"
 
if [ -f "$file" ]
then
         mrxvt -e /usr/bin/mp3info -i "$file" &
else
         echo "Oops, couldn't find selected track" >&2
fi
