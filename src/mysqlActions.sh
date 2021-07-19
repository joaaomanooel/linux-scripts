#!/bin/bash

responseError(){
  echo "========================================================================="
	echo "|----------------------  It's just 1, 2 ou 3!  -------------------------|"
	echo "|------------- Try again, or press Ctrl + C to close :) ----------------|"
	echo "========================================================================="
}

chooseAction(){
  echo 'What action would you like to execute? (start = 1 | stop = 2 | restart = 3) '
  read response;
  case $response in
    1) exec sudo /etc/init.d/mysql start ;;
    2) exec sudo /etc/init.d/mysql stop ;;
    3) exec sudo /etc/init.d/mysql restart ;;
    *) responseError && chooseAction ;;
  esac
}

chooseAction
