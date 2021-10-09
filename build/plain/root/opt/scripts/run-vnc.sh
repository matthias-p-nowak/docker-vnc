#!/bin/bash
export DISPLAY=:0.0
Xvnc :0 -SecurityTypes None &
sleep 1
fluxbox 
