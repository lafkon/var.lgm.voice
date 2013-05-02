<html>
<head>
<link rel="stylesheet"
href="../../../q+a.css" type="text/css" />
<title>FAQ regarding Libre Graphics</title>
</head>
<body style="margin: 40px; width: 400px;">
<div class="allvoices">


<?php

 $voicedirectory  = ".";
 $txt = array_reverse(glob($voicedirectory."/*.txt"));
 $firstrun = true;

foreach($txt as $entry) {
        $file = file_get_contents($entry);

        if (strpos($entry, '_Q') != false) {
                if(!$firstrun) {
                        echo '</ul><br/><br/><br/>';
                } else $firstrun = false;
                
                $md5 = explode("_", basename($entry, ".txt"));
                
                echo "<h2>" .html_entity_decode($file) ."</h2></br>";
                echo "<b><a href='../../../?Q&A=" .$md5[0] ."' class='smalllink'>[WRITE YOUR OPINION]</a>&nbsp;";
                echo "<a href='http://www.forkable.eu/generators/r+w/o/__/" .$md5[0] .".html' class='smalllink'>[SEE POSTERS]</a></b>";
                echo "<ul>";
        } else if(strpos($entry, '_A') != false) {
                echo '<li>' .html_entity_decode($file) .'</li>';
        }
}

?>


</div>
<br/><br/><br/><br/>
</body>
</html>
