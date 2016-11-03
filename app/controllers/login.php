<?php

class login extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	function indexAction() {
		$this->view->render('login.tpl', true);
	}

	function loginAction() {
		$userModel = $this->loadModel('user');
		$username = $this->request->get('username', 'PLAINTEXT');
		$password = $this->request->get('password', 'FREE');
		if($userModel->login($username, $password)) {
			$this->ajaxResponse(null,'/admin');
		} else {
			$this->ajaxError('Could not login','/login');
		}
	}

	function logoutAction( $noJava = null ) {
		$this->mem->set( 'user_id', "" );
		$this->mem->set( 'user_name', "" );
		$this->mem->set( 'user_role', "" );
		header("Location: /");
	}


}
