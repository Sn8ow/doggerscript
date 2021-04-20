#! /bin/bash
clear
printf '\033]2;INSTALLER DOGGERSCRIPT\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/doggerscript" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/doggerscript ]]
	then
		rm -r /root/doggerscript
	fi
	mkdir /root/doggerscript
	cp -r "$DIR"/* /root/doggerscript
	chmod +x /root/doggerscript/install.sh
	gnome-terminal -- "bash /root/doggerscript/install.sh"
fi
echo -e "Installing doggerscript..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/doggerscript/lh1
chmod +x /root/doggerscript/lh2
chmod +x /root/doggerscript/lh3
chmod +x /root/doggerscript/lh31
chmod +x /root/doggerscript/l
chmod +x /root/doggerscript/lh4
chmod +x /root/doggerscript/lh41
chmod +x /root/doggerscript/lh21
chmod +x /root/doggerscript/lh42
chmod +x /root/doggerscript/lh43
chmod +x /root/doggerscript/ls/l131.sh
chmod +x /root/doggerscript/ls/l132.sh
chmod +x /root/ldoggerscript/ls/l133.sh
chmod +x /root/doggerscript/uninstall.sh
clear
echo -e "Copying script to /bin/doggerscript"
sleep 1
mkdir /bin/doggerscript
cd /root/doggerscript
cp /root/doggerscript/l /bin/doggerscript
cp /root/doggerscript/lh1 /bin/doggerscript
cp /root/doggerscript/lh2 /bin/doggerscript
cp /root/doggerscript/lh3 /bin/doggerscript
cp /root/doggerscript/lh31 /bin/doggerscript
cp /root/doggerscript/lh4 /bin/doggerscript
cp /root/doggerscript/lh41 /bin/doggerscript
cp /root/doggerscript/lh21 /bin/doggerscript
cp /root/doggerscript/lh42 /bin/doggerscript
cp /root/doggerscript/lh43 /bin/doggerscript
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/doggerscript")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE i ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding doggerscript to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/doggerscript:$PATH
	sleep 1
	echo "export PATH=/bin/doggerscript:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'l' to launch the script or bash l"
sleep  4
gnome-terminal -- l
exit
