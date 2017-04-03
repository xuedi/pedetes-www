<?php

class admin extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
		$this->view->assign( "isAdmin", true );
	}

	public function indexAction() {
		$this->_auth();
		$this->pebug->log( "admin::index()" );
		include_once "admin/index.php";
	}

	public function i18nAction() {
		$this->_auth();
		$this->pebug->log( "admin::i18n()" );
		include_once "admin/i18n.php";
	}

	public function userAction($request=null) {
		$this->_auth();
		$this->pebug->log( "admin::user()" );
		include_once "admin/user.php";
	}



	// ---- 
	private function _auth() {
		if($this->session->get('user_role')!=3)
			$this->redirect('/login');
	}
	
}