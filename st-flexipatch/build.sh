#!/bin/bash

[ -f config.h ] && sudo rm -v config.h
[ -f patches.h ] && sudo rm -v patches.h
sudo make clean install
