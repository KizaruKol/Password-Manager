#!/bin/bash

function hinzufuegen() {
    echo "Account Name: "
    read name
    echo "Passwort: "
    read pass

    echo $name "|" $pass >> passwort.txt
}

function anschauen() {
    file="passwort.txt"

    cat $file
}
while true
do
    clear="\033[0m"
    echo -e "${clear}Dies ist ein Password Manager"
    echo "Möchten sie hinzufügen(h) anschauen(a) oder verlassen(q)"
    read input;

    if [ $input == "h" ];
        then
            hinzufuegen
        elif [ $input == "a" ];
        then    
            anschauen
        elif [ $input == "q" ];
        then
            exit 1
        else
            rot="\033[1;31m"
            echo -e "${rot}Invalider Command!"
            continue
        
    fi
done

