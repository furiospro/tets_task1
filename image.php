<?php
header('Content-type:image/jpeg');
header('Content-type:image/jpeg');
if(readfile('https://picsum.photos/447/300')){
	$f_con = file_get_contents('test.txt');//Попытка прочитать файл. Если нет - получаем false если файла нет
	$file = fopen('test.txt','w+');//Либо создается файл и открывается для записи и чтения
													// либо сразу открывается для записи и чтения
	if($f_con && is_numeric($f_con)){// сначала проверка, что файл прочитался, потом, что там верные данные(число)
		$f_con++;
		fwrite($file,$f_con);
		fclose($file);
	}else{
		fwrite($file,1);
		fclose($file);
	}
};
