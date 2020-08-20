#!/bin/bash

echo "Please type your first name and last name:"
read FULL_NAME
git config --global user.name "${FULL_NAME}"

echo "Please provide the email associated with your GitHub account:"
read EMAIL_ADDR
git config --global user.email "${EMAIL_ADDR}"
