#!/bin/bash

 REMOTELIST=http://libregraphicsmeeting.org/2013/r+w/list.php
 DELETELIST=delete_this.list


 LIST=voices.list
 wget -O $LIST  $REMOTELIST

 for TXT in `cat $LIST`
  do 
     LOKALTXT=`echo $TXT | rev | cut -d "/" -f 1 | rev`
    
     if [ `find . -name "$LOKALTXT" | wc -l` -lt 1 ] &&  
        [ `grep "$LOKALTXT" $DELETELIST | wc -l` -lt 1 ]; then
           echo $TXT
           wget $TXT
           git add $LOKALTXT
     fi 
 done

 for SPAM in `cat $DELETELIST`
  do     
     if [ `find . -name "$SPAM" | wc -l` -ge 1 ]; then
           echo $SPAM
     fi 
 done


 rm $LIST


exit 0;