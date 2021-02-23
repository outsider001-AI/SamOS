echo -e "\e[32mПривет. Я SamOS. Если запускаешь меня в первый раз, рекомендую набрать help.\e[0m";
read -p 'SamOS ->>' userinput1;
#
if [ "${userinput1:-}" = "help" ]
then
	cd  .texts && cat help.txt && cd ..
fi
if [ "${userinput1:-}" = "quit" ]
then
	exit
fi
if [ "${userinput1:-}" = "calc" ]
then
	cd  .programms && python3 calc.py && cd ..
fi
if [ "${userinput1:-}" = "calc -f" ]
then
	cd  .programms && python3 factorial.py && cd ..
fi
if [ "${userinput1:-}" = "ISP" ]
then
	pkg  update && pkg upgrade && pkg install python && pkg install cmatrix && pkg install sl
fi
if [ "${userinput1:-}" = "Включи что нибудь" ]
then
	echo -e "\e[32mЧто именно?(введи число):
1. Паровозик.
2. Матрица.
3. Четвёртый эпизод SW.\e[0m";
fi
if [ "${userinput1:-}" = "1" ]
then
	sl
fi
if [ "${userinput1:-}" = "2" ]
then
	cmatrix
fi
if [ "${userinput1:-}" = "3" ]
then
	telnet  towel.blinkenlights.nl
fi
if [ "${userinput1:-}" != "quit" ]
then
        bash  Sam.sh

fi
