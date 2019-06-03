<?php
namespace Modelo;

class Database{

	private $database;

	public function __construct($container)
	{
		$this->database = $container->database;
	}

	public function noticias(){
		$arr = $this->database->select('noticia',['id', 'titulo', 'encabezado', 'cuerpo'],['estado'=>0]);
		echo json_encode($arr);
	}











	public function noticiasLeidas(){
		$leidas = $this->database->select('noticia',['id', 'titulo', 'encabezado', 'cuerpo'],['estado'=>1]);
		//echo json_encode(array('leidas' => $leidas));
		echo json_encode($leidas);
	}
	
	public function noticiaPorId($id){
		$arr = $this->database->get('noticia',['titulo','encabezado', 'cuerpo'],['id'=>$id]);
		echo json_encode($arr);
	}

	public function cambiarEstado($id){
		$set = $this->database->update('noticia',['estado'=>1],['id'=>$id]);
		return $set;
	}
}