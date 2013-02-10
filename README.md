
 Results from the input interface at http://www.forkable.eu/generators/r+w/Q&A
 -----------------------------------------------------------------------------------

 The assignment of questions and answers is  the md5sum of the question:

 ${MD5SUM}_Q.txt
 -> ${MD5SUM}_A_${UNIXTIME}.txt

 Every time an answer is inserted via the online interface the question file will 
 also be rewritten,  but since the md5sum stays the same the question file is 
 REPLACED. Therefore if you change the text inside a  question file (${MD5SUM}_Q.txt), 
 a new question/answer pairing will be started the next time an answer will be given,
 because the md5sum CHANGED.

 To prevent doubling of slightly different questions (e.g. only differing in spelling)
 you should rename question and answer pairing according to their new md5sum id.
