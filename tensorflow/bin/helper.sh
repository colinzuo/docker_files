#!/bin/bash

LOG_FILE=/var/log/tensorflow_shell.log

function log_info ()
{
	if [  -d /var/log  ]
	then
	    mkdir -p /var/log 
	fi
	
	DATE_N=`date "+%Y-%m-%d %H:%M:%S"`
	USER_N=`whoami`
	LOG_MSG="${DATE_N} ${USER_N} execute $0 [INFO] $@"
	echo "${LOG_MSG}"
	echo "${LOG_MSG}" >> $LOG_FILE
}

function log_error ()
{
	DATE_N=`date "+%Y-%m-%d %H:%M:%S"`
	USER_N=`whoami`
	LOG_MSG="${DATE_N} ${USER_N} execute $0 [ERROR] $@"
	echo -e "\033[41;37m ${LOG_MSG} \033[0m"
	echo -e "${LOG_MSG}"  >> $LOG_FILE
}

function fn_log ()  
{
	if [  $? -eq 0  ]
	then
	    log_info "$@ sucessed."
	else
	    log_error "$@ failed."
	    exit 1
	fi
}
