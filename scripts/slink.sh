#!/bin/bash

ORIGIN=""
TARGET="/home/yori/Music/on/"
NEW=0
CT=1

#if [ $(ls /home/yori/Music/on | wc -l) != 0 ]; then
#rm /home/yori/Music/on/*
#fi

echo "Updating database..."

while [ $CT -le 4 ]
do
    if [ $CT == 1 ];then
    ORIGIN="/home/yori/Music/音楽/アニメ/"

    elif [ $CT == 2 ];then
    ORIGIN="/home/yori/Music/音楽/インストルメンタル/"

    elif [ $CT == 3 ];then
    ORIGIN="/home/yori/Music/音楽/他/"

    elif [ $CT == 4 ];then
    ORIGIN="/home/yori/Music/音楽/東方/"
    fi

    COUNTFILES="$( ls $ORIGIN | wc -l )"
    COUNTER=1

    while [ $COUNTER -le $COUNTFILES ]
    do

        FILEPATH=$( ls $ORIGIN | nl -s "..," | grep -m 1 "$COUNTER..," )
        FILE=${FILEPATH#*..,}

            if [ ! -f "$TARGET$FILE" ];then
                ln -s "$ORIGIN$FILE" $TARGET
                NEW=$(( $NEW+1 ))
            fi

    COUNTER=$(( $COUNTER+1 ))
    done

CT=$(( CT+1 ))
done

TOTAL=$(ls $TARGET | wc -l)

echo "Database updated"
echo "Total files: $TOTAL"

if [ $NEW -gt 1 ];then
echo "$NEW new files added"

elif [ $NEW == 1 ];then
echo "1 new file added"

elif [ $NEW == 0 ];then
echo "No new file was added"
fi

mpc update
