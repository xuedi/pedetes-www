<?php


// do something ^_^
$options = array('1234');
$action = $this->request->getArray('action', $options);
switch($action) {

	case '1234':
		//
		break;

}

// others
$this->view->assign("action", $action);
$this->view->render('admin/user.tpl', true);
