<?php

class index extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->assign('greeting', 'Hello visitor!' );
		$this->view->render('index.tpl', true);
	}

	function infoAction() {
		phpinfo();
	}

}
