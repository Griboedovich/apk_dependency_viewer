#!/bin/bash
# shebang

nums_pattern="^[0-9]+$"

operation_mod_pattern="^[01]$"

error_status=0

is_name_correct () {
if [[ -z $1 ]]
then
	echo
	echo "Ошибка! Аргумент 1: Имя пакета:"
	echo "Ошибка! Имя пакета не может быть пустым"
	error_status=1
fi
}

is_adress_correct (){
if [[ -z $1 ]]
then
	echo
	echo "Ошибкa! Аргумент 2: Адрес репозитория:"
	echo "Ошибка! Адрес репозитория не может быть пустым"
	error_status=1
fi
}

is_operation_mod_correct (){
if ! [[ $1 =~ $operation_mod_pattern ]]
then
	echo
	echo "Ошибка! Аргумент 3: Режим работы с тестовым репозиторием:"
	echo "Неожиданный ввод, ожидалось: 0 - Стандартный режим работы / 1 - Режим работы с тестовым репозиторием"
	error_status=1
fi

}

is_depth_recursion_correct (){
if ! [[ $1 =~ $nums_pattern ]]
then
	echo
	echo "Ошибка! Аргумент 4: Глубина анализа зависимостей:"
	echo "Глубина анализа должна быть положительным числом"
	error_status=1
fi
}

echo " ________________________________________"
echo "/    Welcome To My CLI Application On    \\"
echo "\\              BashScript                /"
echo " ----------------------------------------"
echo "⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⣿"
echo "⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡆⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿"
echo "⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⡄⠀⠀⠀⠀⠀⠈⠛⢿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹"
echo "⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣬⠿⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠙⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸"
echo "⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠿⠶⠒⠚⠒⠓⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼"
echo "⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿"
echo "⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿"
echo "⣿⣿⣿⣿⡀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣶⣶⣶⠒⠒⢲⡖⠂⠀⠀⠀⠀⢀⣾⣿"
echo "⣿⣿⣿⣿⣷⡀⠀⠀⢠⡏⠉⠉⢹⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⢿⠀⠀⠀⢀⣴⣿⣿⣿"
echo "⣿⡿⠿⠿⣿⣿⡄⠀⣾⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⠀⠀⠀⢸⡆⠀⠘⠛⠛⠛⣹⣿"
echo "⣿⣿⣄⠀⠀⠀⠀⠀⢿⠀⠀⠀⠘⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⠏⠀⠀⠀⢸⠇⠀⠀⠀⢀⣴⣿⣿"
echo "⣿⣿⣿⣿⣶⠀⢀⣀⡈⠃⠀⠀⠀⠈⠛⠋⠀⠀⠘⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⢀⡄⠀⠀⠰⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⠏⠀⠈⠸⠷⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣠⡄⠀⠀⠀⠀⠉⠿⠋⠀⠀⠀⠀⠙⣿⣿⣿"
echo "⣿⣿⣿⠏⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⠞⠋⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⢀⣠⣀⣀⣀⣀⣬⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠛⠒⠶⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿"
echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿"


if [ $# -ne 5 ]
then
	echo
	echo "Ошибка! Для запуска необходимо 5 аргументов"
	error_status=1
	exit
fi

#echo $@
package_name="$1"
adress="$2"
operation_mode="$3"
depth_recursion="$4"
package_filter="$5"


#for var in $@
#do
#	echo $var
#done

is_name_correct $package_name

is_adress_correct $adress

is_operation_mod_correct $operation_mode

is_depth_recursion_correct $depth_recursion

if [ $error_status -eq 1 ]
then
	exit
fi

echo
echo "Имя анализируемого пакета: " $package_name
echo "Адрес репозитория: " $adress
echo "Режим работы с тестовым репозиторием: " $operation_mode
echo "Максимальная глубина анализа зависимостей: " $depth_recursion
echo "Подстрока для фильтрации пакета: " $package_filter
