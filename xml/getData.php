<?php

function get() {
		$mysqli = new mysqli('localhost', 'root', '', 'test_xml');

		if(mysqli_connect_errno()) {
			print_r('Соедение не установлено');
			exit;
		}
//
//		$mysqli->set_charset('utf8');

		$query = "Select * from  movie order by id";
		
		$res = $mysqli->query($query);
                //var_dump($res);
                return mysqli_fetch_all($res,1);
                               
	}

	

        $data = get();
	echo "<pre>";
	//print_r($data);
        $n = "title_russian";
        foreach ($data as $key => $value) {
                echo '<div>';
                echo '<p>';
                echo "$value[descriptions]";
                echo '</p>';
                echo '<p>';
                echo "<img src="."$value[poster]"."></img>";
                echo '</p>';
                echo '</div>';
          //  foreach ($value as $k => $v) {
                //echo $k."<br>";
                //echo $v;
               // echo "<p>".$value[1]."</p>";
         //      echo '<p>';
          //      echo "<img src="."$value[poster]"."></img>";
          //      echo '</p>';
   //}
            
   // echo ;
        }
	
