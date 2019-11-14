#!/bin/bash

	# Сброс
	Color_Off='\e[0m'       # Text Reset

	# Обычные цвета
	Black='\e[0;30m'        # Black
	Red='\e[0;31m'          # Red
	Green='\e[0;32m'        # Green
	Yellow='\e[0;33m'       # Yellow
	Blue='\e[0;34m'         # Blue
	Purple='\e[0;35m'       # Purple
	Cyan='\e[0;36m'         # Cyan
	White='\e[0;37m'        # White

	# Жирные
	BBlack='\e[1;30m'       # Black
	BRed='\e[1;31m'         # Red
	BGreen='\e[1;32m'       # Green
	BYellow='\e[1;33m'      # Yellow
	BBlue='\e[1;34m'        # Blue
	BPurple='\e[1;35m'      # Purple
	BCyan='\e[1;36m'        # Cyan
	BWhite='\e[1;37m'       # White

	# Подчёркнутые
	UBlack='\e[4;30m'       # Black
	URed='\e[4;31m'         # Red
	UGreen='\e[4;32m'       # Green
	UYellow='\e[4;33m'      # Yellow
	UBlue='\e[4;34m'        # Blue
	UPurple='\e[4;35m'      # Purple
	UCyan='\e[4;36m'        # Cyan
	UWhite='\e[4;37m'       # White

	# Фоновые
	On_Black='\e[40m'       # Black
	On_Red='\e[41m'         # Red
	On_Green='\e[42m'       # Green
	On_Yellow='\e[43m'      # Yellow
	On_Blue='\e[44m'        # Blue
	On_Purple='\e[45m'      # Purple
	On_Cyan='\e[46m'        # Cyan
	On_White='\e[47m'       # White

	# Высоко Интенсивные
	IBlack='\e[0;90m'       # Black
	IRed='\e[0;91m'         # Red
	IGreen='\e[0;92m'       # Green
	IYellow='\e[0;93m'      # Yellow
	IBlue='\e[0;94m'        # Blue
	IPurple='\e[0;95m'      # Purple
	ICyan='\e[0;96m'        # Cyan
	IWhite='\e[0;97m'       # White

	# Жирные Высоко Интенсивные
	BIBlack='\e[1;90m'      # Black
	BIRed='\e[1;91m'        # Red
	BIGreen='\e[1;92m'      # Green
	BIYellow='\e[1;93m'     # Yellow
	BIBlue='\e[1;94m'       # Blue
	BIPurple='\e[1;95m'     # Purple
	BICyan='\e[1;96m'       # Cyan
	BIWhite='\e[1;97m'      # White

	# Высоко Интенсивные фоновые
	On_IBlack='\e[0;100m'   # Black
	On_IRed='\e[0;101m'     # Red
	On_IGreen='\e[0;102m'   # Green
	On_IYellow='\e[0;103m'  # Yellow
	On_IBlue='\e[0;104m'    # Blue
	On_IPurple='\e[0;105m'  # Purple
	On_ICyan='\e[0;106m'    # Cyan
	On_IWhite='\e[0;107m'   # White

	#Не смотрите код ниже. Это может навредить вам

	VERSION='1.3.5'
	DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

	function NEXT(){
		echo -en "Функция будет доступна в следующих версиях.\n> "
	}

	function NOT(){
		echo -en "Такого действия нет. Выберите действие ещё раз...\n> "
	}

	function EXIT(){
		echo -en "\n${BPurple}Вы вышли из панели.\n\n${Color_Off}"
		exit
	}

	function FINISH_SELECT(){
		read A
		case ${A} in
			"1" ) START_SERVER_MENU;;
			"2" ) MAIN_MENU;;
			*) NOT && FINISH_SELECT;;
		esac
	}

	function INSTALL_FINISH(){
		echo -en "\n\n${BIBlue}Завершение установки.\n\n"
		echo -en "${White}Установка сервера завершена! Желаете запустить сервер прямо сейчас?\n"
		echo -en "1. Да\n"
		echo -en "2. Нет\n"
		echo -en "> "
		FINISH_SELECT
	}

	function PREPAIR_INSTALL(){
		echo -en "\n${IBlue}Подготовка к установке сервера...${White}\n"
		sleep 1
		if [ -d "bin" ]; then
			rm -rf bin
		fi
		if [ -d "src" ]; then
			rm -rf src
		fi
		if [ -f "PocketMine-MP.phar" ]; then
			rm -rf PocketMine-MP.phar
		fi
		if [ -f "nukkit.jar" ]; then
			rm -rf nukkit.jar
		fi
		if [ -f "pocketmine.yml" ]; then
			rm -rf pocketmine.yml
		fi
		if [ -f "white-list.txt" ]; then
			rm -rf white-list.txt
		fi
		if [ -d "vendor" ]; then
			rm -rf vendor
		fi
		if [ -d "logs" ]; then
			rm -rf logs
		fi
		if [ -d "worlds" ]; then
			rm -rf worlds
		fi
		if [ -f "ops.txt" ]; then
			rm -rf ops.txt
		fi
		if [ -f "ops.json" ]; then
			rm -rf ops.json
		fi
		if [ -f "banned-ips.txt" ]; then
			rm -rf banned-ips.txt
		fi
		if [ -f "Steadfast2.phar" ]; then
			rm -rf Steadfast2.phar
		fi
		if [ -f "banned-ips.json" ]; then
			rm -rf banned-ips.json
		fi
		if [ -f "banned-players.txt" ]; then
			rm -rf banned-players.txt
		fi
		if [ -f "banned-players.json" ]; then
			rm -rf banned-players.json
		fi
		if [ -d "plugins" ]; then
			rm -rf plugins
		fi
		if [ -f "server.log" ]; then
			rm -rf server.log
		fi
		if [ -d "resource_packs" ]; then
			rm -rf resource_packs
		fi
		if [ -d "players" ]; then
			rm -rf players
		fi
		if [ -f "server.properties" ]; then
			rm -rf server.properties
		fi
		if [ -f "banned-cids.json" ]; then
			rm -rf banned-cids.json
		fi
		if [ -f "banned-cids.txt" ]; then
			rm -rf banned-cids.txt
		fi
		if [ -f "genisys.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "altay.yml" ]; then
			rm -rf altay.yml
		fi
		if [ -d "crashdumps" ]; then
			rm -rf crashdumps
		fi
		if [ -f "nukkit.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "pocketmine-soft.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "recipes.json" ]; then
			rm -rf recipes.json
		fi
		if [ -f "nukkit.yml" ]; then
			rm -rf nukkit.yml
		fi
		if [ -d "clans" ]; then
			rm -rf clans
		fi
		if [ -d "Economy" ]; then
			rm -rf Economy
		fi
		if [ -d "SteadLag" ]; then
			rm -rf SteadLag
		fi
		if [ -f "creativeitems.json" ]; then
			rm -rf creativeitems.json
		fi
		if [ -d "plugin_data" ]; then
			rm -rf plugin_data
		fi
		if [ -f "pocketmine-soft.yml" ]; then
			rm -rf pocketmine-soft.yml
		fi
		if [ -f "installer.sh" ]; then
			rm -rf installer.sh
		fi
		if [ -f "LICENSE" ]; then
			rm -rf LICENSE
		fi
		if [ -d "tests" ]; then
			rm -rf tests
		fi
		if [ -f "README.md" ]; then
			rm -rf README.md
		fi
		if [ -f "gomint.jar" ]; then
			rm -rf gomint.jar
		fi
		if [ -f "server.yml" ]; then
			rm -rf server.yml
		fi
		if [ -d "world" ]; then
			rm -rf world
		fi
		apt-get install git
		apt-get install screen
	}

	#Yes, I tried, but nothing happened
	function MINET(){
		echo -en "${IBlue}Установка ядра ${IGreen}MiNET${White}\n"
		git clone https://github.com/NiclasOlofsson/MiNET.git
		mv MiNET/* $DIR
		rm -rf MiNET
		echo -en "${IBlue}Установка пакетов.${White}\n"
		apt install mono-xbuild
		apt install mono
		apt install mono-runtime
		echo -en "${IBlue}Компиляция ядра.${White}\n"
		xbuild src/MiNET/MiNET.sln
		cd src/MiNET/MiNET.Service/bin/Linux
		mono MiNET.Service.exe
	}

	#function GOMINT(){
	#	echo -en "${IBlue}Установка ядра ${IGreen}GoMint (1.8).${White}\n"
	#	wget http://ci.gomint.io/job/GoMint/job/master/lastSuccessfulBuild/artifact/gomint-server/target/GoMint.jar
	#	mv GoMint.jar gomint.jar
	#	if [ -n "dpkg -l | grep java" ]
	#	then
	#		echo -en "${IGreen}Java 11 ${IBlue}уже установлена!${White}\n"
	#	else
	#		echo -en "${IBlue}Установка библеотек ${IGreen}Java 11.${White}\n"
   	#		apt install openjdk-11-jre-headless
	#	fi
	#	INSTALL_FINISH
	#}

	function NUKKITX(){
		echo -en "${IBlue}Установка ядра ${IGreen}NukkitX (последняя версия).${White}\n"
		wget https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
		mv nukkit-1.0-SNAPSHOT.jar nukkit.jar
		if [ -n "dpkg -l | grep java" ]
		then
			echo -en "${IGreen}Java 11 ${IBlue}уже установлена!${White}\n"
		else
			echo -en "${IBlue}Установка библеотек ${IGreen}Java 11.${White}\n"
   			apt install openjdk-11-jre-headless
		fi
		INSTALL_FINISH
	}

	function GENISYSPRO(){
		echo -en "${IBlue}Установка ядра ${IGreen}Genisys.${White}\n"
		git clone https://github.com/GenisysPro/GenisysPro.git
		mv GenisysPro/src $DIR
		rm -rf GenisysPro
		echo -en "${IBlue}Установка библеотек ${IGreen}PHP 7.2.${White}\n"
		wget https://jenkins.pmmp.io/job/PHP-7.2-Linux-x86_64/lastSuccessfulBuild/artifact/PHP_Linux-x86_64.tar.gz
		tar -xvf PHP_Linux-x86_64.tar.gz
		rm -rf PHP_Linux-x86_64.tar.gz
		INSTALL_FINISH
	}

	function POCKETMINE(){
		echo -en "${IBlue}Установка ядра ${IGreen}PocketMine-MP${White}\n"
		wget https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar
		echo -en "${IBlue}Установка библеотек ${IGreen}PHP 7.2${White}\n"
		wget https://jenkins.pmmp.io/job/PHP-7.2-Aggregate/lastSuccessfulBuild/artifact/PHP-7.2-Linux-x86_64.tar.gz
		tar -xvf PHP-7.2-Linux-x86_64.tar.gz
		rm -rf PHP-7.2-Linux-x86_64.tar.gz
		INSTALL_FINISH
	}

	function STEADFAST2(){
		echo -en "${BRed}Ядро сервера SoulMine нужно установить заново? Ну ладно...\n"
		sleep 5
		echo -en "${IBlue}Установка ядра ${IGreen}SteadFast2.${White}\n"
		git clone https://github.com/Hydreon/Steadfast2.git
		mv Steadfast2/* $DIR
		rm -rf Steadfast2
		echo -en "${IBlue}Установка библеотек ${IGreen}PHP 7.2.${White}\n"
		wget https://jenkins.pmmp.io/job/PHP-7.2-Aggregate/lastSuccessfulBuild/artifact/PHP-7.2-Linux-x86_64.tar.gz
		tar -xvf PHP-7.2-Linux-x86_64.tar.gz
		rm -rf PHP-7.2-Linux-x86_64.tar.gz
		INSTALL_FINISH
	}

	function CORE_SELECT(){
		read A
		case ${A} in
			"1" ) PREPAIR_INSTALL && POCKETMINE;;
			"2" ) PREPAIR_INSTALL && GENISYSPRO;;
			"3" ) PREPAIR_INSTALL && NUKKITX;;
			"4" ) PREPAIR_INSTALL && STEADFAST2;;
			"5" ) PREPAIR_INSTALL && GOMINT;;
			*) NOT && CORE_SELECT;;
		esac
	}

	function CORE_CHOOSE(){
		echo -en "\n${BIBlue}Выбор ядра\n\n"
		echo -en "${White}Выберите ядро на котором будет стоять ваш сервер. Все ядра загружаются с официальных источников!\n"
		echo -en "1. PocketMine-MP (PHP, MC последняя версия)\n"
		echo -en "2. GenisysPro (PHP, MC 1.1)\n"
		#echo -en "3. NukkitX (JAVA, MC 1.1)\n"
		echo -en "3. NukkitX (JAVA, MC последняя версия)\n"
		echo -en "${BRed}4. SteadFast2 (PHP, MC 1.X, это ядро сервера SoulMine)\n${White}"
		#echo -en "5. GoMint (JAVA, MC последняя версия)\n"
		#echo -en "5. GoMine (GOLANG, MC последняя версия)\n"
		#Will be released in version 1.5.0
		#echo -en "7. MiNET (C#, 1.8)\n"
		echo -en "> "
		CORE_SELECT
	}

	function INSTALL_SERVER(){
		read A
		case ${A} in
			"1" ) CORE_CHOOSE;;
			"2" ) MAIN_MENU;;
			*) NOT && INSTALL_SERVER;;
		esac
	}
	
	function INSTALLING_SERVER(){
		echo -en "\n${BIBlue}Установка сервера\n\n"
		echo -en "${White}Сервер будет установлен в директорию, где находится эта панель. Если в этой дериктории уже есть сервер, то он будет удалён! Вы согласны?\n"
		echo -en "1. Да\n"
		echo -en "2. Нет\n"
		echo -en "> "
		INSTALL_SERVER
	}

	function CHECK_INSTALL(){
		read A
		case ${A} in
			"1" ) INSTALLING_SERVER;;
			"2" ) MAIN_MENU;;
			"3" ) EXIT;;
			*) NOT && CHECK_INSTALL;;
		esac
	}

	function CHECKING_INSTALL(){
		echo -en "\n${White}Выберите действие\n"
		echo -en "1. Запустить установщик\n"
		echo -en "2. В главное меню\n"
		echo -en "3. Выйти из панели\n> "
		CHECK_INSTALL
	}

	function START_SERVER(){
		if [ -f "bin/php7/bin/php" ]; then
			if [ -f "src/pocketmine/PocketMine.php" ]; then
				bin/php7/bin/php src/pocketmine/PocketMine.php
				echo -en "${IYellow}Сервер был выключен.\n"
				MAIN_MENU
			elif [ -f "PocketMine-MP.phar" ]; then
				bin/php7/bin/php PocketMine-MP.phar
				echo -en "${IYellow}Сервер был выключен.\n"
				MAIN_MENU
			else
				if [ -f "src/pocketmine/PocketMine.php" ]; then
					echo -en "\n${BIRed}Не найдена работающая библеотека PHP7!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				elif [ -f "PocketMine-MP.phar" ]; then
					echo -en "\n${BIRed}Не найдена работающая библеотека PHP7!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				else
					echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				fi
			fi
		elif [ -n "dpkg -l | grep java" ]; then
			if [ -f "nukkit.jar" ]; then
				echo -en "\n${BIBlue}Включение сервера...\n\n"
				echo -en "${White}Введите объём памяти, который хотите выделить.\n"
				echo -en "> "
				read G
				java -jar -Xmx${G}G nukkit.jar
				echo -en "${IYellow}Сервер был выключен.\n"
				MAIN_MENU
			elif [ -f "gomint.jar" ]; then
				echo -en "\n${BIBlue}Включение сервера...\n\n"
				echo -en "${White}Введите объём памяти, который хотите выделить сервере.\n"
				echo -en "> "
				read G
				java -jar -Xmx${G}G gomint.jar
				echo -en "${IYellow}Сервер был выключен.\n"
				MAIN_MENU
			else
				echo -en "\n${BIRed}Не найдено работающее ядро Java!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			fi
		else
			if [ -f "nukkit.jar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библеотека JAVA!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			else
				echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			fi
		fi
	}

	function START_SERVER_LOOP(){
		if [ -f "bin/php7/bin/php" ]; then
			if [ -f "src/pocketmine/PocketMine.php" ]; then
				while true
				do
					bin/php7/bin/php src/pocketmine/PocketMine.php
					echo -en "${IGreen}Сервер (ядро сервера SoulMine) запустится через 2 секунды. Отменить перезапуск -${BIYellow} CTRL + C.${Color_Off}"
					sleep 1
					apt-get install git
					git clone https://github.com/BlusterySasha-SoulMine/SMpanel.git
					mv SMpanel/start.sh start.sh
					rm -rf SMpanel
					chmod +x start.sh
					sleep 2
				done
			elif [ -f "PocketMine-MP.phar" ]; then
				while true
				do
					bin/php7/bin/php PocketMine-MP.phar
					echo -en "${IGreen}Сервер перезапустится через 2 секунды. Отменить перезапуск -${BIYellow} CTRL + C.${Color_Off}"
					sleep 1
					apt-get install git
					git clone https://github.com/BlusterySasha-SoulMine/SMpanel.git
					mv SMpanel/start.sh start.sh
					rm -rf SMpanel
					chmod +x start.sh
					sleep 2
				done
			else
				if [ -f "src/pocketmine/PocketMine.php" ]; then
					echo -en "\n${BIRed}Не найдена работающая библеотека PHP7!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				elif [ -f "PocketMine-MP.phar" ]; then
					echo -en "\n${BIRed}Не найдена работающая библеотека PHP7!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				else
					echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
					echo -en "${BIRed}Запуск сервера невозможен!\n"
					echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
					CHECKING_INSTALL
				fi
			fi
		elif [ -n "dpkg -l | grep java" ]; then
			if [ -f "nukkit.jar" ]; then
				echo -en "\n${BIBlue}Включение сервера.\n\n"
				echo -en "${White}Введите объём памяти, который хотите выделить серверу.\n"
				echo -en "> "
				read G
				while true
				do
					trap START_SERVER_MENU 2
					java -jar -Xmx${G}G nukkit.jar
					echo -en "${IGreen}Сервер перезапустится через 5 секунд. Отменить перезапуск -${BIYellow} CTRL + C.${Color_Off}"
					sleep 1
					apt-get install git
					git clone https://github.com/BlusterySasha-SoulMine/SMpanel.git
					mv SMpanel/start.sh start.sh
					rm -rf SMpanel
					chmod +x start.sh
					sleep 5
				done
			elif [ -f "gomint.jar" ]; then
				echo -en "\n${BIBlue}Включение сервера\n\n"
				echo -en "${White}Введите объём памяти, который хотите выделить серверу.\n"
				echo -en "> "
				read G
				while true
				do
					trap START_SERVER_MENU 2
					java -jar -Xmx${G}G gomint.jar
					echo -en "${IGreen}Сервер перезапустится через 5 секунд. Отменить перезапуск -${BIYellow} CTRL + C.${Color_Off}"
					sleep 1
					apt-get install git
					git clone https://github.com/BlusterySasha-SoulMine/SMpanel.git
					mv SMpanel/start.sh start.sh
					rm -rf SMpanel
					chmod +x start.sh
					sleep 5
				done
			else
				echo -en "\n${BIRed}Не найдено работающее ядро Java!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			fi
		else
			if [ -f "nukkit.jar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библеотека Java!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был неправильно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			else
				echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			fi
		fi
	}

	function LOOP_SERVER(){
		read A
		case ${A} in
			"1" ) START_SERVER_LOOP;;
			"2" ) START_SERVER;;
			"3" ) MAIN_MENU;;
			*) NOT && LOOP_SERVER;;
		esac
	}

	function START_SERVER_MENU(){
		echo -en "\n${BIBlue}Запуск сервера\n\n"
		echo -en "${White}Выберите дальнейшие действия...\n"
		echo -en "1. Зациклить запуск сервера (автоматический перезапуск)\n"
		echo -en "2. Обычный запуск сервера\n"
		echo -en "3. Вернуться назад\n"
		echo -en "* Ядро создано специально для сервера SoulMine.\n\n"
		echo -en "> "
		LOOP_SERVER
	}

	function DELETE_SERVER(){
		echo -en "\n${IBlue}Удаление сервера...${White}\n"
		sleep 1
		if [ -d "bin" ]; then
			rm -rf bin
		fi
		if [ -d "src" ]; then
			rm -rf src
		fi
		if [ -f "PocketMine-MP.phar" ]; then
			rm -rf PocketMine-MP.phar
		fi
		if [ -f "nukkit.jar" ]; then
			rm -rf nukkit.jar
		fi
		if [ -f "pocketmine.yml" ]; then
			rm -rf pocketmine.yml
		fi
		if [ -f "white-list.txt" ]; then
			rm -rf white-list.txt
		fi
		if [ -d "vendor" ]; then
			rm -rf vendor
		fi
		if [ -d "logs" ]; then
			rm -rf logs
		fi
		if [ -d "worlds" ]; then
			rm -rf worlds
		fi
		if [ -f "ops.txt" ]; then
			rm -rf ops.txt
		fi
		if [ -f "ops.json" ]; then
			rm -rf ops.json
		fi
		if [ -f "banned-ips.txt" ]; then
			rm -rf banned-ips.txt
		fi
		if [ -f "Steadfast2.phar" ]; then
			rm -rf Steadfast2.phar
		fi
		if [ -f "banned-ips.json" ]; then
			rm -rf banned-ips.json
		fi
		if [ -f "banned-players.txt" ]; then
			rm -rf banned-players.txt
		fi
		if [ -f "banned-players.json" ]; then
			rm -rf banned-players.json
		fi
		if [ -d "plugins" ]; then
			rm -rf plugins
		fi
		if [ -f "server.log" ]; then
			rm -rf server.log
		fi
		if [ -d "resource_packs" ]; then
			rm -rf resource_packs
		fi
		if [ -d "players" ]; then
			rm -rf players
		fi
		if [ -f "server.properties" ]; then
			rm -rf server.properties
		fi
		if [ -f "banned-cids.json" ]; then
			rm -rf banned-cids.json
		fi
		if [ -f "banned-cids.txt" ]; then
			rm -rf banned-cids.txt
		fi
		if [ -f "genisys.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "altay.yml" ]; then
			rm -rf altay.yml
		fi
		if [ -d "crashdumps" ]; then
			rm -rf crashdumps
		fi
		if [ -f "nukkit.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "pocketmine-soft.yml" ]; then
			rm -rf genisys.yml
		fi
		if [ -f "recipes.json" ]; then
			rm -rf recipes.json
		fi
		if [ -f "nukkit.yml" ]; then
			rm -rf nukkit.yml
		fi
		if [ -d "clans" ]; then
			rm -rf clans
		fi
		if [ -d "Economy" ]; then
			rm -rf Economy
		fi
		if [ -d "SteadLag" ]; then
			rm -rf SteadLag
		fi
		if [ -f "creativeitems.json" ]; then
			rm -rf creativeitems.json
		fi
		if [ -d "plugin_data" ]; then
			rm -rf plugin_data
		fi
		if [ -f "pocketmine-soft.yml" ]; then
			rm -rf pocketmine-soft.yml
		fi
		if [ -f "installer.sh" ]; then
			rm -rf installer.sh
		fi
		if [ -f "LICENSE" ]; then
			rm -rf LICENSE
		fi
		if [ -d "tests" ]; then
			rm -rf tests
		fi
		if [ -f "README.md" ]; then
			rm -rf README.md
		fi
		if [ -f "gomint.jar" ]; then
			rm -rf gomint.jar
		fi
		if [ -f "server.yml" ]; then
			rm -rf server.yml
		fi
		if [ -d "world" ]; then
			rm -rf world
		fi
		echo -en "\n${IGreen}Сервер успешно удалён!${White}\n"
		MAIN_MENU
	}

	function REMOVE_CHECK(){
		read A
		case ${A} in
			"1" ) DELETE_SERVER;;
			"2" ) MAIN_MENU;;
			*) NOT && REMOVE_CHECK;;
		esac
	}

	function REMOVE_SERVER(){
		echo -en "\n${BIBlue}Удаление сервера\n\n"
		echo -en "${White}Все файлы сервера в этой директории будут удалены! Вы согласны?\n"
		echo -en "1. Да\n"
		echo -en "2. Нет\n"
		echo -en "> "
		REMOVE_CHECK
	}

	function DELETE(){
		read A
		if [ -f ${A} ]; then
			echo -en "${IBlue}Удаляется резервная копия ${IGreen}${A}${White}\n"
			rm -rf ${A}
			echo -en "\n${IGreen}Резервная копия успешно удалена!${White}\n"
			cd $DIR
			BACKUPS
		else
			echo -en "Такой резервной копии нет\n"
			echo -en "> "
			DELETE
		fi
	}

	function RESTORE(){
		read A
		if [ -f ${A} ]; then
			echo -en "${IBlue}Восстанавливается резервная копия ${IGreen}${A}${White}\n"
			mkdir ${A}_run
			mv ${A} ${A}_run
			cd ${A}_run
			tar -xvf ${A}
			cd -
			mv ${A}_run/${A} /root/.panel_backups
			rm -rf ${DIR}/*
			mv ${A}_run/* $DIR
			rm -rf ${A}_run
			echo -en "\n${IGreen}Резервная копия успешно восстановлена!${White}\n"
			cd $DIR
			BACKUPS
		else
			echo -en "Такой резервной копии нет\n"
			echo -en "> "
			RESTORE
		fi
	}

	function COPY(){
		read A
		if [ -f ${A} ]; then
			echo -en "${IBlue}Загружается резервная копия ${IGreen}${A}${White}\n"
			cp ${A} $DIR
			echo -en "\n${IGreen}Резервная копия успешно восстановлена!${White}\n"
			cd $DIR
			BACKUPS
		else
			echo -en "Такой резервной копии нет\n"
			echo -en "> "
			RESTORE
		fi
	}

	function COPY_BACKUP(){
		cd /root/.panel_backups
		echo -en "\n${BIBlue}Загрузка резервной копии\n\n"
		echo -en "${White}Ваши резервные копии\n"
		ls
		echo -en "Введите название резервной копии\n"
		echo -en "> "
		COPY
	}

	function BACKUP(){
		cd /root/.panel_backups
		echo -en "\n${BIBlue}Восстановление резервной копии\n\n"
		echo -en "${White}Ваши резервные копии\n"
		ls
		echo -en "Введите название резервной копии\n"
		echo -en "> "
		RESTORE
	}

	function DELETE_BACKUP(){
		cd /root/.panel_backups
		echo -en "\n${BIBlue}Удаление резервной копии\n\n"
		echo -en "${White}Ваши резервные копии\n"
		ls
		echo -en "Введите название резервной копии\n"
		echo -en "> "
		DELETE
	}

	function CREATE_BACKUP(){
		echo -en "\n${BIBlue}Создание резервной копии\n\n"
		echo -en "${White}Введите название резервной копии\n"
		echo -en "> "
		read A
		echo -en "${IBlue}Создаётся резервная копия ${IGreen}${A}.tar.gz${White}\n"
		tar -cf ${A}.tar.gz *
		mv ${A}.tar.gz /root/.panel_backups/
		echo -en "\n${IGreen}Резервная копия успешно создана!${White}\n"
		BACKUPS
	}

	function BACKUPS_CHECK(){
		read A
		case ${A} in
			"1" ) CREATE_BACKUP;;
			"2" ) DELETE_BACKUP;;
			"3" ) BACKUP;;
			"4" ) COPY_BACKUP;;
			"5" ) MAIN_MENU;;
			*) NOT && BACKUPS_CHECK;;
		esac
	}

	function BACKUPS(){
		echo -en "\n${BIBlue}Резервные копии\n\n"
		echo -en "${White}Все резервные копии хранятся локально!\nВыберите дальнейшие действия...\n"
		echo -en "1. Создать резервную копию\n"
		echo -en "2. Удалить резервную копию\n"
		echo -en "3. Восстановить резервную копию\n"
		echo -en "4. Скачать резервную копию\n"
		echo -en "5. Вернуться назад\n"
		echo -en "> "
		if [ -d "/root/.panel_backups" ]; then
			true
		else
			mkdir /root/.panel_backups
			if [ -d "/root/.panel_backups" ]; then
				true
			else
				echo -en "\n${BIBlue}Резервные копии\n\n"
				echo -en "${BIRed}Создание резервных копий невозможно!\n"
				echo -en "${Red}Необходимо иметь права!\n"
				MAIN_MENU
			fi
		fi
		BACKUPS_CHECK
	}

	function PREPAIR_UPDATE(){
		if [ -d "src" ]; then
			rm -rf src
		fi
		if [ -f "PocketMine-MP.phar" ]; then
			rm -rf PocketMine-MP.phar
		fi
		if [ -f "nukkit.jar" ]; then
			rm -rf nukkit.jar
		fi
	}

	function UPDATE_CORE_SELECT(){
		read A
		case ${A} in
			"1" ) PREPAIR_UPDATE && POCKETMINE;;
			"2" ) PREPAIR_UPDATE && GENISYSPRO;;
			"3" ) PREPAIR_UPDATE && NUKKITX;;
			"4" ) PREPAIR_UPDATE && STEADFAST2;;
			"5" ) PREPAIR_UPDATE && GOMINT;;
			*) NOT && UPDATE_CORE_SELECT;;
		esac
	}

	function UPDATE_CORE_CHOOSE(){
		echo -en "\n${BIBlue}Выбор ядра\n\n"
		echo -en "${White}Выберите ядро на котором будет стоять ваш сервер. Все ядра загружаются с официальных источников!\n"
		echo -en "1. PocketMine-MP\n"
		echo -en "2. GenisysPro\n"
		echo -en "3. NukkitX\n"
		echo -en "${BRed}4. SteadFast2 (лучший выбор)\n${White}"
		echo -en "> "
		UPDATE_CORE_SELECT
	}

	function UPDATE(){
		echo -en "${IBlue}Обновление панели...${White}\n"
		sleep 1
		apt-get install git
		git clone https://github.com/BlusterySasha-SoulMine/SMpanel.git
		mv SMpanel/start.sh start.sh
		rm -rf SMpanel
		chmod +x start.sh
		echo -en "\n${IGreen}Панель успешно обновлена!${White}\n"
		MAIN_MENU
	}

	function START(){
		read A
		case ${A} in
			"1" ) START_SERVER_MENU;;
			"2" ) INSTALLING_SERVER;;
			"3" ) UPDATE_CORE_CHOOSE;;
			"4" ) REMOVE_SERVER;;
			"5" ) BACKUPS;;
			"6" ) UPDATE;;
			"7" ) EXIT;;
			*) NOT && START;;
		esac
	}


	function MAIN_MENU(){
		echo -en "\n${BIBlue}Главное меню\n"
		echo -en "\n"
		echo -en "${White}Пожалуйста, выберите действие. Напишите номер действия и нажмите ENTER\n"
		echo -en "1. Запустить сервер\n"
		echo -en "2. Установить сервер\n"
		echo -en "3. Обновить сервер\n"
		echo -en "4. Удалить сервер\n"
		echo -en "5. Резервные копии\n"
		echo -en "6. Обновить панель\n"
		echo -en "7. Выйти из панели\n"
		echo -en "> "
		START
	}

	cd "$DIR"

	echo -en "\n\n"
	echo -en "${BIGreen}SMpanel ${IWhite}${VERSION}\n"
	echo -en "${BIBlue}GitHub: ${IYellow}github.com/BlusterySasha-SoulMine/SMpanel\n"
	echo -en "${BIRed}Link: ${IYellow}vk.com/blusterysasha\n\n"
	MAIN_MENU
