<?php
header('Content-type:image/jpeg');
if(readfile('https://picsum.photos/447/300')){
	if(file_exists('test.txt')){
		$f_con = file_get_contents('test.txt');
		$file = fopen('test.txt','w+');
		if(is_numeric($f_con)){
			$f_con++;
			fwrite($file,$f_con);
			fclose($file);
		}else{
			fwrite($file,1);
			fclose($file);
		}
	}else{
		$file = fopen('test.txt','w+');
		fwrite($file,1);
		fclose($file);
	}
};
