#!/bin/bash

echo -e "STEP1:Checking for existing ssh keys:\n"
echo -e "STEP2:Generating a new SSH key and adding it to the ssh-agent:\n"
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

echo -e "STEP3:Adding a new SSH key to your Github account\n"
ssh -T git@github.com

echo -e "STEP4:Working with SSH key passphrases:\n"

