<?php

class about extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->render('about.tpl', true);
	}


}
