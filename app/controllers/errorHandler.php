<?php

class errorHandler extends Pedetes\controller {

	var $code;

	function __construct($ctn, $code) {
		$this->code = $code;
		parent::__construct($ctn);
	}

	function indexAction($request) {
		
		// fix whatever errors occurred in ($this->code)
		// ...


		// default 404
		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");
		$this->view->render('404.twig', true);
	}

}
