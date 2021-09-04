#!/bin/bash

# Package cleaning

yum clean all

# Configs

sed -i 's/PASS_MAX_DAYS [0-9]+/ UMASK/' /etc/login.defs
sed -i 's/PASS_MAX_DAYS +[0-9]+/ PASS_MAX_DAYS 15/' /etc/login.defs
sed -i 's/PASS_MAX_DAYS +[0-9]+/ PASS_MIN_DAYS 6/' /etc/login.defs
sed -i 's/PASS_MAX_DAYS +[0-9]+/ PASS_WARN_AGE 7/' /etc/login.defs