#!/usr/bin/env bash

UPDATES=`checkupdates | wc -l`

re='^[0-9]+$'
if ! [[ $UPDATES =~ $re ]] ; then
   echo " Failed to check updates"; exit 0
fi

if (( $UPDATES > 0 ));then
  echo " ${UPDATES} updates available"; exit 0
else
  echo " No New Updates"; exit 0
fi
