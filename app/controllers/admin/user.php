<?php

// get needed objects
$product = $this->loadModel('products');

// do something ^_^
$options = array('1234');
$action = $this->request->get('action', 'ARRAY', $options, true);
switch($action) {

	case '1234':
		//
		break;

}

// others
$this->view->assign("action", $action);
$this->view->render('admin/user.tpl', true);
