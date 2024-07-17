#!/bin/bash


# This script is user to take user Input, imput from arguments, and print that variable


<<user_input
echo "User Details"
read -p "Enter Your Name " name
read -p "Enter Your Surname " surname
read -p "Enter Your City " city
read -p "Enter Your PinCode " pincode

echo "Your Name is $name"
echo "Your full name is $name $surname"
echo "$name lives in $city and it's pincode is $pincode
user_input


if [ "$1" = "0" ]; then
	echo "Your name is $2"
	echo "Your surname is $3"
	echo "YOur City is $4"
	echo "Your pincode is $5"
else 
	echo "Please Enter you Name Surname City and PinCode in Argument no 1 2 3 and 4 respectively"
fi

#To get ouput from this we should execute below command, we are using "0" because of string input
 #  ./user_input "0" "gaurav" "daksh" "dehradun" "210092"
