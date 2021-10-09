#!/bin/bash

#hopefully this blossoms into a bingo-ish linux card 

#rationale: make variables of randomly generated numbers of the columns
#loop through the columns to make rows
#change the middle number to 00 to be consistent with assignment

#v1.0 : improvement to be done on repetition of elements. At this point we have a printout of the cols as rows
#will need to add for loop in the future

declare -a Lcol=()

for i in {1..5}
do
    num=$[RANDOM%14+1]
    Lcol+=[$num] 
done

#echo $Lcol (this was used to print the array to check it)

#nice, this works. Lets copy it over a bunch of times and change
#the range for the other columns. 

declare -a Icol=()

for i in {1..5}
do
    num=$[RANDOM%14+16]
    Icol+=[$num] 
done

declare -a Ncol=()

for i in {1..5}
do
    num=$[RANDOM%14+31]
    Ncol+=[$num] 
done

declare -a Ucol=()

for i in {1..5}
do
    num=$[RANDOM%14+46]
    Ucol+=[$num] 
done

declare -a Xcol=()

for i in {1..5}
do
    num=$[RANDOM%14+61]
    Xcol+=[$num] 
done

echo $Lcol $Icol $Ncol $Ucol $Xcol
