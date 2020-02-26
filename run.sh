
#!/bin/bash

if [ `whoami` != 'root' ];
  then
   echo You Must Run as Root!
   exit 100
fi

echo Enter 'e' to disable and 'd' to disable

read eord

if [ $eord == 'e' ]
  then
    echo Enabing rules
elif [ $2 == 'd' ]
  then
    echo Disabling rules
else
    echo  Invalid entry
    exit 100
fi

if [ $eord == 'e']
  then
    read -p 'How many rules do you want to enable?' rulecountE
    ruleE=1
    while [ $ruleE -le $rulecountE ]
    do
        read -p "Rule $ruleE: " rule
        ruleE_array[$ruleE]="${rule}"
        ((ruleE++))
   done
   echo "${ruleE_array[*]}"
fi
