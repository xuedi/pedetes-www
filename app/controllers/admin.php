<?php

class admin extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->render('admin/info.tpl', true);
	}


}
