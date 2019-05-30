<?php
namespace Modelo;

class Database{

	private $database;

	public function __construct($container)
	{
		$this->database = $container->database;
	}

	public function noticias(){
		$arr = $this->database->select('noticia',['id', 'titulo', 'encabezado', 'cuerpo']);
		return $arr;
	}
	
	public function noticiaPorId($id){
		$arr = $this->database->select('noticia',['id', 'titulo', 'encabezado', 'cuerpo']
		,['id'=>$id]);
		return $arr;
	}
}