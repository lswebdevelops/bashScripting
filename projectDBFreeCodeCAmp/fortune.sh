#!/bin/bash
#Program to tell a persons fortune

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

echo -e "\n~~ Fortune Teller ~~\n"

GET_FORTUNE() {
  if [[ ! $1 ]]
then
  echo Ask a yes or no question:
else
echo Try again. Make sure it ends with a question mark:
fi
read QUESTION
}
GET_FORTUNE 
until [[ $QUESTION =~ \?$ ]]
do
#again here is an argument for the function
GET_FORTUNE again
done
echo -e "\n${RESPONSES[$N]}"
