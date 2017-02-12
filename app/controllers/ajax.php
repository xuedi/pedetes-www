<?php

// create a CW simmilar class to deal with it in the apropiate controllers
// only keep global stuff here
class ajax extends \Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
	}



	function indexAction() {
		$this->view->render( 'ajax.tpl' );
	}



	function languageAction() {
		$i18n = $this->loadModel('i18n');
		$languages = $i18n->getAvailableLanguages();
		$lang = $this->request->getArray('lang', null, $languages);
		$this->mem->set( 'language', $lang );
		$this->ajaxResponse();
	}



	function loginAction() {
		$userModel = $this->loadModel('user');
		$username = $this->request->getText('username');
		$password = $this->request->getFree('password');
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
