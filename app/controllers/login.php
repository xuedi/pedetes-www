<?php

class login extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->render('login.tpl', true);
	}




}
