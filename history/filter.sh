#!/bin/bash
clear 
#first filters> for startee
echo "Filtering the startee logs>>"
# >>  grep -v -e \-$  > the '-v'  will ignore any '-' sign
cat april2022.log | egrep 'startee(.*)[A-Z 0-9]{3,}' | grep -v -e \-$ > /c/Users/f0fp583/Desktop/bashScripting/history/starteefilter1.log

sed  's/\]\(.*\)User/,/g' /c/Users/f0fp583/Desktop/bashScripting/history/starteefilter1.log > /c/Users/f0fp583/Desktop/bashScripting/history/starteefilter2.log

sed  's/,: /,/g' /c/Users/f0fp583/Desktop/bashScripting/history/starteefilter2.log > /c/Users/f0fp583/Desktop/bashScripting/history/output3.log

sed  's/^\(.*\)\[//g' /c/Users/f0fp583/Desktop/bashScripting/history/output3.log > /c/Users/f0fp583/Desktop/bashScripting/history/output5.log

sed  's/:\(.*\),/,/g' /c/Users/f0fp583/Desktop/bashScripting/history/output5.log > /c/Users/f0fp583/Desktop/bashScripting/history/starteeDobbleLines.log
# removing the " like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63" line
cat starteeDobbleLines.log | egrep '[A-Z 0-9]{3,}' | grep -v -e Chrome > /c/Users/f0fp583/Desktop/bashScripting/history/starteeDobbleLinesNoChrome.log
# removing duble lines: reading, sorting than removing duplicates
 cat starteeDobbleLinesNoChrome.log | sort -u | uniq -u > "starteeFinalDoc_$(date +"%F").csv"

# removing remaining files
rm starteefilter1.log  starteefilter2.log output3.log output5.log starteeDobbleLines.log starteeDobbleLinesNoChrome.log



# filters for daspustartee
echo "Filtering the daspustartee logs>>"

cat april2022.log | egrep 'daspueeportal(.*)[A-Z 0-9]{3,}' | grep -v -e \-$ > /c/Users/f0fp583/Desktop/bashScripting/history/filter1.log

sed  's/\]\(.*\)User/,/g' /c/Users/f0fp583/Desktop/bashScripting/history/filter1.log > /c/Users/f0fp583/Desktop/bashScripting/history/filter2.log

sed  's/,: /,/g' /c/Users/f0fp583/Desktop/bashScripting/history/filter2.log > /c/Users/f0fp583/Desktop/bashScripting/history/output3.log

sed  's/^\(.*\)\[//g' /c/Users/f0fp583/Desktop/bashScripting/history/output3.log > /c/Users/f0fp583/Desktop/bashScripting/history/output5.log

sed  's/:\(.*\),/,/g' /c/Users/f0fp583/Desktop/bashScripting/history/output5.log > /c/Users/f0fp583/Desktop/bashScripting/history/daspuStarteeDobbleLines.log

# removing duble lines: 
 cat daspuStarteeDobbleLines.log | sort -u | uniq -u > "daspueeportalFinalDoc_$(date +"%F").csv"

# removing remaining files
rm filter1.log  filter2.log output3.log output5.log daspuStarteeDobbleLines.log
echo 'All unused files were removed'
echo "Done, daspueeportalFinalDoc.csv and starteeFinalDoc.csv were created"
