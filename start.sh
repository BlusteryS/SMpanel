#!/bin/bash
# Обычные цвета
Color_Off='\e[0m'
Black='\e[0;30m'
Red='\e[0;31m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
White='\e[0;37m'

# Жирные цвета
BBlack='\e[1;30m'
BRed='\e[1;31m'
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
BCyan='\e[1;36m'
BWhite='\e[1;37m'

# Подчёркнутые
UBlack='\e[4;30m'
URed='\e[4;31m'
UGreen='\e[4;32m'
UYellow='\e[4;33m'
UBlue='\e[4;34m'
UPurple='\e[4;35m'
UCyan='\e[4;36m'
UWhite='\e[4;37m'

# Фоновые
On_Black='\e[40m'
On_Red='\e[41m'
On_Green='\e[42m'
On_Yellow='\e[43m'
On_Blue='\e[44m'
On_Purple='\e[45m'
On_Cyan='\e[46m'
On_White='\e[47m'

# Высоко Интенсивные
IBlack='\e[0;90m'
IRed='\e[0;91m'
IGreen='\e[0;92m'
IYellow='\e[0;93m'
IBlue='\e[0;94m'
IPurple='\e[0;95m'
ICyan='\e[0;96m'
IWhite='\e[0;97m'

# Жирные высоко интенсивные
BIBlack='\e[1;90m'
BIRed='\e[1;91m'
BIGreen='\e[1;92m'
BIYellow='\e[1;93m'
BIBlue='\e[1;94m'
BIPurple='\e[1;95m'
BICyan='\e[1;96m'
BIWhite='\e[1;97m'

# Высоко интенсивные фоновые
On_IBlack='\e[0;100m'
On_IRed='\e[0;101m'
On_IGreen='\e[0;102m'
On_IYellow='\e[0;103m'
On_IBlue='\e[0;104m'
On_IPurple='\e[0;105m'
On_ICyan='\e[0;106m'
On_IWhite='\e[0;107m'

# Изменение кода ниже может сломать скрипт. Не делайте этого!

VERSION='2.0.0'
DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

function NEXT() {
	echo -en "Функция будет доступна в следующих версиях.\n> "
}

function NOT() {
	echo -en "Такого действия нет! Выберите действие ещё раз.\n> "
}

function EXIT() {
	echo -en "\n${BPurple}Вы вышли из панели.\n\n${Color_Off}"
	exit
}

function FINISH_SELECT() {
	read A
	case ${A} in
		"1" ) START_SERVER_MENU;;
		"2" ) MAIN_MENU;;
		*) NOT && FINISH_SELECT;;
	esac
}

function INSTALL_FINISH() {
	echo -en "\n\n${BIBlue}Завершение установки.\n\n"
	echo -en "${White}Установка сервера завершена! Желаете запустить сервер прямо сейчас?\n"
	echo -en "${BRed}1.${White} Да\n"
	echo -en "${BRed}2.${White} Нет\n"
	echo -en "> "
	FINISH_SELECT
}

function PREPAIR_INSTALL() {
	echo -en "\n${IBlue}Подготовка директории для установки сервера...${White}\n"
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
	echo -en "\n${BIBlue}Выбор ОС\n\n"
	echo -en "${White}Выберите, на какой ОС Вы сейчас находитесь.\n"
	echo -en "${BRed}1.${White} Ubuntu/Debian\n"
	echo -en "${BRed}2.${White} CentOS\n"
	echo -en "> "
	OS_SELECT
}

function MINET() {
	echo -en "${IBlue}Установка ядра - ${IGreen}MiNET${White}\n"
	git clone https://github.com/NiclasOlofsson/MiNET.git
	mv MiNET/* $DIR
	rm -rf MiNET
	echo -en "${IBlue}Установка необходимых пакетов...${White}\n"
	apt install mono-xbuild
	apt install mono
	apt install mono-runtime
	echo -en "${IBlue}Компиляция ядра...${White}\n"
	xbuild src/MiNET/MiNET.sln
	cd src/MiNET/MiNET.Service/bin/Linux
	mono MiNET.Service.exe
}

function NUKKITX() {
	echo -en "${IBlue}Установка ядра ${IGreen}NukkitX (последняя версия).${White}\n"
	wget https://ci.nukkitx.com/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
	mv nukkit-1.0-SNAPSHOT.jar nukkit.jar
	java --version || apt -y install default-jre
	INSTALL_FINISH
}

function GENISYSPRO() {
	echo -en "${IBlue}Установка ядра ${IGreen}GenisysPro (1.1.x)${White}.\n"
	git clone https://github.com/GenisysPro/GenisysPro.git
	mv GenisysPro/src $DIR
	rm -rf GenisysPro
	echo -en "${IBlue}Установка библиотек ${IGreen}PHP 7.3.${White}\n"
	wget https://github.com/shoki-3738/pmmp-Binary/blob/master/PHP_Linux-x86_64.tar.gz
	tar -xvf PHP_Linux-x86_64.tar.gz
	rm -rf PHP_Linux-x86_64.tar.gz
	INSTALL_FINISH
}

function POCKETMINE() {
	echo -en "${IBlue}Установка ядра ${IGreen}PocketMine-MP${White}\n"
	wget https://jenkins.pmmp.io/job/PocketMine-MP/lastSuccessfulBuild/artifact/PocketMine-MP.phar
	echo -en "${IBlue}Установка библиотек ${IGreen}PHP 7.3${White}\n"
	wget https://jenkins.pmmp.io/job/PHP-7.3-Aggregate/lastSuccessfulBuild/artifact/PHP-7.3-Linux-x86_64.tar.gz
	tar -xvf PHP-7.3-Linux-x86_64.tar.gz
	rm -rf PHP-7.3-Linux-x86_64.tar.gz
	INSTALL_FINISH
}

function ALTAY() {
	echo -en "${IBlue}Установка ядра ${IGreen}ALTAY${White}\n"
	wget https://altay.minehub.de/job/Altay/lastSuccessfulBuild/artifact/Altay.phar
	echo -en "${IBlue}Установка библиотек ${IGreen}PHP 7.3${White}\n"
	wget https://jenkins.pmmp.io/job/PHP-7.3-Aggregate/lastSuccessfulBuild/artifact/PHP-7.3-Linux-x86_64.tar.gz
	tar -xvf PHP-7.3-Linux-x86_64.tar.gz
	rm -rf PHP-7.3-Linux-x86_64.tar.gz
	INSTALL_FINISH
}

function LITECORE() {
	echo -en "${IBlue}Установка ядра ${IGreen}LiteCore${White}\n"
	wget https://talk.24serv.pro/uploads/short-url/xBQzHcMRiFyyUlfmpamZ9IZUXCn.phar
	echo -en "${IBlue}Установка библиотек ${IGreen}PHP 7.3${White}\n"
	wget https://jenkins.pmmp.io/job/PHP-7.3-Aggregate/lastSuccessfulBuild/artifact/PHP-7.3-Linux-x86_64.tar.gz
	tar -xvf PHP-7.3-Linux-x86_64.tar.gz
	rm -rf PHP-7.3-Linux-x86_64.tar.gz
	INSTALL_FINISH
}

function STEADFAST2() {
	echo -en "${IBlue}Установка ядра ${IGreen}SteadFast2.${White}\n"
	git clone https://github.com/Hydreon/Steadfast2.git
	mv Steadfast2/* $DIR
	rm -rf Steadfast2
	echo -en "${IBlue}Установка библиотек ${IGreen}PHP 7.2.${White}\n"
	wget https://github.com/shoki-3738/pmmp-Binary/blob/master/PHP_Linux-x86_64.tar.gz
	tar -xvf PHP_Linux-x86_64.tar.gz
	rm -rf PHP_Linux-x86_64.tar.gz
	INSTALL_FINISH
}

function CORE_SELECT() {
	read A
	case ${A} in
		"1" ) PREPAIR_INSTALL && POCKETMINE;;
		"2" ) PREPAIR_INSTALL && GENISYSPRO;;
		"3" ) PREPAIR_INSTALL && NUKKITX;;
		"4" ) PREPAIR_INSTALL && STEADFAST2;;
		"5" ) PREPAIR_INSTALL && LITECORE;;
		*) NOT && CORE_SELECT;;
	esac
}

function OS_SELECT() {
	read A
	case ${A} in
		"1" ) REMOVE_UD;;
		"2" ) REMOVE_CentOS;;
		*) NOT && PREPAIR_INSTALL;;
	esac
}

function REMOVE_UD() {
	apt -y install git || echo -en "${IBlue}Извините, но Ваша система не поддерживается. Пожалуйста, установите Ubuntu/Debian (или выберите другую).${White}\n"
	apt -y install screen || echo -en "${IBlue}Извините, но Ваша система не поддерживается. Пожалуйста, установите Ubuntu/Debian (или выберите другую).${White}\n"
	echo -en "${IBlue}Данные старого сервера успешно удалены.${White}\n"
}

function REMOVE_CentOS() {
	yum -y install git || echo -en "${IBlue}Извините, но Ваша система не поддерживается. Пожалуйста, установите CentOS (или выберите другую).${White}\n"
	yum -y install screen || echo -en "${IBlue}Извините, но Ваша система не поддерживается. Пожалуйста, установите CentOS (или выберите другую).${White}\n"
	echo -en "${IBlue}Данные старого сервера успешно удалены.${White}\n"
}

function CORE_CHOOSE() {
	echo -en "\n${BIBlue}Выбор ядра\n\n"
	echo -en "${White}Выберите ядро, на котором будет стоять Ваш сервер. Все ядра загружаются с официальных источников!\n"
	echo -en "${BRed}1.${White} PocketMine-MP (PHP, MC: последняя версия)\n${White}"
	echo -en "${BRed}2.${White} GenisysPro (PHP, MC: 1.1)\n${White}"
	echo -en "${BRed}3.${White} NukkitX (JAVA, MC: последняя версия)\n${White}"
	echo -en "${BRed}4.${White} SteadFast2 (PHP, MC: 1.2+)\n${White}"
	echo -en "${BRed}5.${White} LiteCore (PHP, MC 1.1)\n${White}"
	echo -en "${BRed}6.${White} Altay (PHP, MC: последняя версия)\n${White}"
	echo -en "> "
	CORE_SELECT
}

function INSTALL_SERVER() {
	read A
	case ${A} in
		"1" ) CORE_CHOOSE;;
		"2" ) MAIN_MENU;;
		*) NOT && INSTALL_SERVER;;
	esac
}
	
function INSTALLING_SERVER() {
	echo -en "\n${BIBlue}Установка сервера\n\n"
	echo -en "${White}Сервер будет установлен в директорию, где находится эта панель. Если в ней уже есть сервер, то он будет удалён! Вы согласны?\n"
	echo -en "${BRed}1.${White} Да\n"
	echo -en "${BRed}2.${White} Нет\n"
	echo -en "> "
	INSTALL_SERVER
}

function CHECK_INSTALL() {
	read A
	case ${A} in
		"1" ) INSTALLING_SERVER;;
		"2" ) MAIN_MENU;;
		"3" ) EXIT;;
		*) NOT && CHECK_INSTALL;;
	esac
}

function CHECKING_INSTALL() {
	echo -en "\n${White}Выберите действие:\n"
	echo -en "${BRed}1.${White} Запустить установку\n"
	echo -en "${BRed}2.${White} В главное меню\n"
	echo -en "${BRed}3.${White} Выйти из панели\n> "
	CHECK_INSTALL
}

function START_SERVER() {
	if [ -f "bin/php7/bin/php" ]; then
		if [ -f "src/pocketmine/PocketMine.php" ]; then
			bin/php7/bin/php src/pocketmine/PocketMine.php
			echo -en "${IYellow}Сервер был выключен.\n"
			MAIN_MENU
		elif [ -f "PocketMine-MP.phar" ]; then
			bin/php7/bin/php PocketMine-MP.phar
			echo -en "${IYellow}Сервер был выключен.\n"
			MAIN_MENU
		elif [ -f "Altay.phar" ]; then
			bin/php7/bin/php Altay.phar
			echo -en "${IYellow}Сервер был выключен.\n"
			MAIN_MENU
		else
			if [ -f "src/pocketmine/PocketMine.php" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
				CHECKING_INSTALL
			elif [ -f "PocketMine-MP.phar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
				CHECKING_INSTALL
			elif [ -f "Altay.phar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
				CHECKING_INSTALL
			else
				echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
				CHECKING_INSTALL
			fi
		fi
	elif [ -n "dpkg -l | grep java" ]; then
		if [ -f "nukkit.jar" ]; then
			echo -en "\n${BIBlue}Запуск сервера..\n\n"
			echo -en "${White}Введите объём памяти, который Вы хотите выделить серверу.\n"
			echo -en "> "
			read G
			java -jar -Xmx${G}G nukkit.jar
			echo -en "${IYellow}Сервер был выключен.\n"
			MAIN_MENU
		elif [ -f "gomint.jar" ]; then
			echo -en "\n${BIBlue}Запуск сервера..\n\n"
			echo -en "${White}Введите объём памяти, который Вы хотите выделить серверу.\n"
			echo -en "> "
			read G
			java -jar -Xmx${G}G gomint.jar
			echo -en "${IYellow}Сервер был выключен.\n"
			MAIN_MENU
		else
			echo -en "\n${BIRed}Не найдено работающее ядро Java!\n"
			echo -en "${BIRed}Запуск сервера невозможен!\n"
			echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
			echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
			CHECKING_INSTALL
		fi
	else
		if [ -f "nukkit.jar" ]; then
			echo -en "\n${BIRed}Не найдена работающая библиотека Java!\n"
			echo -en "${BIRed}Запуск сервера невозможен!\n"
			echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
			echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
			CHECKING_INSTALL
		else
			echo -en "\n${BIRed}В этой директории не установлен сервер!\n"
			echo -en "${BIRed}Запуск сервера невозможен!\n"
			echo -en "${IGreen}Воспользуйтесь инсталлятором из нашей панели!\n"
			CHECKING_INSTALL
		fi
	fi
}

function START_SERVER_LOOP() {
	if [ -f "bin/php7/bin/php" ]; then
		if [ -f "src/pocketmine/PocketMine.php" ]; then
			while true
			do
				echo -en "${IGreen}Сервер скоро запустится... Отменить запуск: ${BRed}CTRL + C.${Color_Off}"
				sleep 1
				bin/php7/bin/php src/pocketmine/PocketMine.php
			done
		elif [ -f "PocketMine-MP.phar" ]; then
			while true
			do
				echo -en "${IGreen}Сервер скоро запустится... Отменить перезапуск:${BIYellow} CTRL + C.${Color_Off}"
				sleep 1
				bin/php7/bin/php PocketMine-MP.phar
			done
		elif [ -f "Altay.phar" ]; then
			while true
			do
				echo -en "${IGreen}Сервер скоро запустится... Отменить перезапуск:${BIYellow} CTRL + C.${Color_Off}"
				sleep 1
				bin/php7/bin/php Altay.phar
			done
		else
			if [ -f "src/pocketmine/PocketMine.php" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			elif [ -f "PocketMine-MP.phar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
				echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
				CHECKING_INSTALL
			elif [ -f "Altay.phar" ]; then
				echo -en "\n${BIRed}Не найдена работающая библиотека PHP 7!\n"
				echo -en "${BIRed}Запуск сервера невозможен!\n"
				echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
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
			echo -en "\n${BIBlue}Запуск сервера..\n\n"
			echo -en "${White}Введите объём памяти, который Вы хотите выделить серверу.\n"
			echo -en "> "
			read G
			while true
			do
				trap START_SERVER_MENU 2
				echo -en "${IGreen}Сервер скоро запустится... Отменить запуск: ${BRed}CTRL + C.${Color_Off}"
				sleep 1
				java -jar -Xmx${G}G nukkit.jar
			done
		elif [ -f "gomint.jar" ]; then
			echo -en "\n${BIBlue}Запуск сервера..\n\n"
			echo -en "${White}Введите объём памяти, который Вы хотите выделить серверу.\n"
			echo -en "> "
			read G
			while true
			do
				trap START_SERVER_MENU 2
				echo -en "${IGreen}Сервер скоро запустится... Отменить запуск: ${BRed}CTRL + C.${Color_Off}"
				sleep 1
				java -jar -Xmx${G}G gomint.jar
			done
		else
			echo -en "\n${BIRed}Не найдено работающее ядро Java!\n"
			echo -en "${BIRed}Запуск сервера невозможен!\n"
			echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
			echo -en "${IGreen}Воспользуйтесь установщиком из нашей панели!\n"
			CHECKING_INSTALL
		fi
	else
		if [ -f "nukkit.jar" ]; then
			echo -en "\n${BIRed}Не найдена работающая библиотека Java!\n"
			echo -en "${BIRed}Запуск сервера невозможен!\n"
			echo -en "${IYellow}Возможно, сервер был некорректно установлен.\n"
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


function LOOP_SERVER() {
	read A
	case ${A} in
		"1" ) START_SERVER_LOOP;;
		"2" ) START_SERVER;;
		"3" ) MAIN_MENU;;
		*) NOT && LOOP_SERVER;;
	esac
}

function START_SERVER_MENU() {
	echo -en "\n${BIBlue}Запуск сервера..\n\n"
	echo -en "${White}Выберите дальнейшее действия..\n"
	echo -en "${BRed}1.${White} Зациклить запуск сервера (автоматический запуск при выключении)\n"
	echo -en "${BRed}2.${White} Обычный запуск сервера\n"
	echo -en "${BRed}3.${White} Вернуться назад\n"
	echo -en "> "
	LOOP_SERVER
}

function DELETE_SERVER() {
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
	if [ -f "Altay.phar" ]; then
		rm -rf Altay.phar
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
	UPDATE
	echo -en "\n${IGreen}Сервер успешно удалён!${White}\n"
	MAIN_MENU
}

function REMOVE_CHECK() {
	read A
	case ${A} in
		"1" ) DELETE_SERVER;;
		"2" ) MAIN_MENU;;
		*) NOT && REMOVE_CHECK;;
	esac
}

function REMOVE_SERVER() {
	echo -en "\n${BIBlue}Удаление сервера\n\n"
	echo -en "${White}Все файлы сервера в этой директории будут удалены! Вы согласны?\n"
	echo -en "${BRed}1.${White} Да\n"
	echo -en "${BRed}2.${White} Нет\n"
	echo -en "> "
	REMOVE_CHECK
}

function DELETE() {
	read A
	if [ -f ${A} ]; then
		echo -en "${IBlue}Удаляется резервная копия ${IGreen}${A}${White}\n"
		rm -rf ${A}
		echo -en "\n${IGreen}Резервная копия успешно удалена!${White}\n"
		cd $DIR
		BACKUPS
	else
		echo -en "Такой резервной копии нет!\n"
		echo -en "> "
		DELETE
	fi
}

function RESTORE() {
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
		echo -en "Такой резервной копии нет!\n"
		echo -en "> "
		RESTORE
	fi
}

function COPY() {
	read A
	if [ -f ${A} ]; then
		echo -en "${IBlue}Загружается резервная копия ${IGreen}${A}${White}\n"
		cp ${A} $DIR
		echo -en "\n${IGreen}Резервная копия успешно восстановлена!${White}\n"
		cd $DIR
		BACKUPS
	else
		echo -en "Такой резервной копии нет!\n"
		echo -en "> "
		RESTORE
	fi
}

function COPY_BACKUP() {
	cd /root/.panel_backups
	echo -en "\n${BIBlue}Загрузка резервной копии\n\n"
	echo -en "${White}Ваши резервные копии:\n"
	ls
	echo -en "Введите название резервной копии!\n"
	echo -en "> "
	COPY
}

function BACKUP() {
	cd /root/.panel_backups
	echo -en "\n${BIBlue}Восстановление резервной копии\n\n"
	echo -en "${White}Ваши резервные копии:\n"
	ls
	echo -en "Введите название резервной копии!\n"
	echo -en "> "
	RESTORE
}

function DELETE_BACKUP() {
	cd /root/.panel_backups
	echo -en "\n${BIBlue}Удаление резервной копии\n\n"
	echo -en "${White}Ваши резервные копии:\n"
	ls
	echo -en "Введите название резервной копии!\n"
	echo -en "> "
	DELETE
}

function CREATE_BACKUP() {
	echo -en "\n${BIBlue}Создание резервной копии...\n\n"
	echo -en "${White}Введите название резервной копии!\n"
	echo -en "> "
	read A
	echo -en "${IBlue}Создаётся резервная копия ${IGreen}${A}.tar.gz${White}\n"
	tar -cf ${A}.tar.gz *
	mv ${A}.tar.gz /root/.panel_backups/
	echo -en "\n${IGreen}Резервная копия успешно создана!${White}\n"
	BACKUPS
}

function BACKUPS_CHECK() {
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

function BACKUPS() {
	echo -en "\n${BIBlue}Резервные копии\n\n"
	echo -en "${White}Все резервные копии хранятся локально!\nВыберите дальнейшее действие..\n"
	echo -en "${BRed}1.${White} Создать резервную копию\n"
	echo -en "${BRed}2.${White} Удалить резервную копию\n"
	echo -en "${BRed}3.${White} Восстановить резервную копию\n"
	echo -en "${BRed}4.${White} Скачать резервную копию\n"
	echo -en "${BRed}5.${White} Вернуться назад\n"
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

function PREPAIR_UPDATE() {
	if [ -d "src" ]; then
		rm -rf src
	fi
	if [ -f "PocketMine-MP.phar" ]; then
		rm -rf PocketMine-MP.phar
	fi
	if [ -f "Altay.phar" ]; then
		rm -rf Altay.phar
	fi
	if [ -f "nukkit.jar" ]; then
		rm -rf nukkit.jar
	fi
}

function UPDATE_CORE_SELECT() {
	read A
	case ${A} in
		"1" ) PREPAIR_UPDATE && POCKETMINE;;
		"2" ) PREPAIR_UPDATE && GENISYSPRO;;
		"3" ) PREPAIR_UPDATE && NUKKITX;;
		"4" ) PREPAIR_UPDATE && STEADFAST2;;
		"5" ) PREPAIR_UPDATE && ALTAY;;
		*) NOT && UPDATE_CORE_SELECT;;
	esac
}

function UPDATE_CORE_CHOOSE() {
	echo -en "\n${BIBlue}Выбор ядра\n\n"
	echo -en "${White}Выберите ядро на котором будет работать Ваш сервер. Все ядра загружаются с официальных источников!\n"
	echo -en "${BRed}1.${White} PocketMine-MP\n"
	echo -en "${BRed}2.${White} GenisysPro\n"
	echo -en "${BRed}3.${White} NukkitX\n"
	echo -en "${BRed}4.${White} SteadFast2\n"
	echo -en "${BRed}5.${White} Altay\n"
	echo -en "> "
	UPDATE_CORE_SELECT
}

function UPDATE() {
	echo -en "${IBlue}Обновление панели (нужен ${BRed}git${IBlue})...${White}\n"
	git clone https://github.com/BlusteryS/SMpanel.git || {
		apt -y install git
		UPDATE
	}
	mv SMpanel/start.sh start.sh
	rm -rf SMpanel
	chmod +x start.sh
	echo -en "\n${IGreen}Панель успешно обновлена!${White}\n"
	MAIN_MENU
}

function START() {
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


function MAIN_MENU() {
	echo -en "\n${BIBlue}Главное меню\n\n"
	echo -en "${White}Выберите действие\n"
	echo -en "${BRed}1.${White} Запустить сервер\n"
	echo -en "${BRed}2.${White} Установить сервер\n"
	echo -en "${BRed}3.${White} Обновить сервер\n"
	echo -en "${BRed}4.${White} Удалить сервер\n"
	echo -en "${BRed}5.${White} Резервные копии\n"
	echo -en "${BRed}6.${White} Обновить панель\n"
	echo -en "${BRed}7.${White} Выйти из панели\n"
	echo -en "> "
	START
}

cd "$DIR"
clear
echo -en "\n\n"
echo -en "${BIWhite}Версия: ${IRed}${VERSION}\n"
echo -en "${BIWhite}GitHub: ${IRed}github.com/BlusterySasha-SoulMine/SMpanel\n"
echo -en "${BIWhite}VK: ${IRed}vk.com/blusterysasha\n\n"
MAIN_MENU