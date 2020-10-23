#! /bin/bash
coin=0

function head_or_tails()
{
        if [[ $((RANDOM%2)) -eq 1 ]]
        then
               echo coin=heads
        else
               echo coin=tails
        fi
}
head_or_tails
