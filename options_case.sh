#!/bin/bash

op1()
{
    echo 'Executin option 1'
}

op2()
{
    echo 'Executin option 2'
}

opn()
{
    echo "Executin option n $1"
}


help()
{
	echo
	echo
	echo
	echo '+-------------------------------------------------------------------------------------------------------------------------'
	echo '+-------------------------------------------------------------------------------------------------------------------------'
	echo '|'
	echo '|'
    echo '|' $"$0 says"
    echo '|'
    echo "| op1 - option 1"
    echo "| op2 - option 2"
    echo "| opn - option n <param>"
	echo '|'
	echo '|'
	echo '+-------------------------------------------------------------------------------------------------------------------------'
	echo '+-------------------------------------------------------------------------------------------------------------------------'

}

case "$1" in
        op1)
            op1 
            ;;
         
        op2)
            op2
            ;;
        opn)
            opn $2
            ;;
         
        *)
			help
            exit 1
 
esac