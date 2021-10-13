#!/bin/bash

#hopefully this blossoms into a bingo-ish linux card 

#rationale: make variables of randomly generated numbers of the columns
#loop through the columns to make rows
#change the middle number to 00 to be consistent with assignment

#v1.0 : improvement to be done on repetition of elements. At this point we have a printout of the cols as rows
#v1.1 : completed the added code to prevent repitition, and we have also padded the l column with zeros when we print to terminal. We have also included the middle 00 spot. 

#will need to add for loop in the future

declare -a Lcol=()
i=0
   
while [[ $i -le 4 ]]
do
num=`expr $RANDOM \% 15 + 1`
    if [[ ! ${Lcol[*]} =~ $num ]]
    then 
        Lcol+=("$num")
        ((i++))
    fi
done

declare -a Icol=()
i=0
   
while [[ $i -le 4 ]]
do
num=`expr $RANDOM \% 15 + 16`
    if [[ ! ${Icol[*]} =~ $num ]]
    then
        Icol+=("$num")
        ((i++))
    fi
done

declare -a Ncol=()
i=0
   
while [[ $i -le 4 ]]
do
num=`expr $RANDOM \% 15 + 31`
    if [[ ! ${Ncol[*]} =~ $num ]]
    then
        Ncol+=("$num")
        ((i++))
    fi
done

#trying to add 00 at the 3rd element in Ncol 
Ncol=( "${Ncol[@]:0:2}" "00" "${Ncol[@]:3}" )

declare -a Ucol=()
i=0
   
while [[ $i -le 4 ]]
do
num=`expr $RANDOM \% 15 + 46`
    if [[ ! ${Ucol[*]} =~ $num ]]
    then
        Ucol+=("$num")
        ((i++))
    fi
done

declare -a Xcol=()
i=0
   
while [[ $i -le 4 ]]
do
num=`expr $RANDOM \% 15 + 61`
    if [[ ! ${Xcol[*]} =~ $num ]]
    then
        Xcol+=("$num")
        ((i++))
    fi
done

#nice, this works. Lets copy it over a bunch of times and change
#the range for the other columns. 

#the next lines are to pad 0's for single digit numbers in Lcol. 

declare -a Lcolpadded=()

for i in {0..4}
do 
    tmp=$(printf "%02d" ${Lcol[$i]})
    Lcolpadded+=("$tmp")
done

#remember for calculations to use Lcol and not Lcolpadded as Lcolpadded is an array of strings 

#need to print out the card as cols instead of rows. 



#print out the card to see it 
echo -e "${Lcolpadded[@]}\n""${Icol[@]}\n""${Ncol[@]}\n""${Ucol[@]}\n""${Xcol[@]}\n"



