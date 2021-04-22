#!/bin/bash
# Basic if statement


callApi()
{
    echo api
}

f()
{
    next=$(($1+1))
    echo $1
    callApi; 
    /d/tmp/t.sh $next &

}


if [ $1 -lt 100 ]
then
    f $1;
fi

