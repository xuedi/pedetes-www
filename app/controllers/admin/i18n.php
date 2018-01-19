<?php

// used recources
/** @var i18n_model $i18n */

use Pedetes\i18n_model;

$i18n = $this->loadModel('i18n');
$lang = $this->session->get('language');

// admin menue
$options = array('save', 'search', 'publish', 'clean');
$action = $this->request->getArray('action', $options);
switch($action) {

	case 'save':
		$i18n->saveForm($lang);
		break;

	case 'search':
		$i18n->search();
		break;

	case 'publish':
		$i18n->publish();
		break;

	case 'clean':
		$i18n->clean();
		break;

}

// display
$this->view->assign("action", $action);
$this->view->assign( "tplTranslationList", $i18n->getTranslationList($lang));
$this->view->render('admin/i18n.twig', true);

