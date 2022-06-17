#!/usr/bin/env bash
echo "---------------------------"
echo "
____  __..__     .___   .___                 _________               .__          __           
|    |/ _||__|  __| _/ __| _/ ____    ______ /   _____/  ____ _______ |__|______ _/  |_  ______ 
|      <  |  | / __ | / __ |_/ __ \  /  ___/ \_____  \ _/ ___\\_  __ \|  |\____ \\   __\/  ___/ 
|    |  \ |  |/ /_/ |/ /_/ |\  ___/  \___ \  /        \\  \___ |  | \/|  ||  |_> >|  |  \___ \  
|____|__ \|__|\____ |\____ | \___  >/____  >/_______  / \___  >|__|   |__||   __/ |__| /____  > 
        \/         \/     \/     \/      \/         \/      \/            |__|              \/"

echo "---------------------------"
echo "created by K33w3"
commands_list=("pwd" "uname -a" "whoami" "ls -la /" "ls -la /home/" "ps" "cat /etc/passwd" "cat /etc/shadow" "")
for i in "${commands_list[@]}"
do
    read -r -p 'Next command? ' choice
    case "$choice" in
      ''|'') eval "$i";;
      *) echo 'Response not valid';;
    esac
done

echo "Thats all folks ;)"

