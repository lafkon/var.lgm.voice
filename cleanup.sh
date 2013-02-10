#!/bin/bash


 for QUESTION in `ls *_Q.txt` 
  do 
     MD5SUMNAME=`echo $QUESTION | cut -d "_" -f 1`
     MD5SUMCONTENT=`cat $QUESTION | md5sum | cut -d " " -f 1`

     echo $MD5SUMNAME " = "  $MD5SUMCONTENT 
 
     if [ $MD5SUMNAME != $MD5SUMCONTENT ]; then 

       echo "not matching"; 
       echo $QUESTION " -> " ${MD5SUMCONTENT}_Q.txt
       git mv -f $QUESTION ${MD5SUMCONTENT}_Q.txt

       for ANSWER in `ls ${MD5SUMNAME}_A-*.txt`
        do
           TIMESTAMP=`echo $ANSWER | cut -d "_" -f 2-3`
           echo $ANSWER " -> " ${MD5SUMCONTENT}_$TIMESTAMP
           git mv -f $ANSWER ${MD5SUMCONTENT}_$TIMESTAMP
       done
     fi
 done

exit 0;