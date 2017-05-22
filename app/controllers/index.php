<?php

class index extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->render('index.twig');
	}

	function infoAction() {
		phpinfo();
	}

}
