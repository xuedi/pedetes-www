<?php

class blog extends Pedetes\controller {

	function __construct($ctn) {
		parent::__construct($ctn);
		$this->basePath = dirname(dirname(dirname(__DIR__)));
	}

	function indexAction($request) {
		if(isset($request['url'][1])) {
			$wp = $this->loadCoreModel('wordpress');
			$url = $request['url'];
			$category = ($url[1] == 'category' ? $url[2] : null);
			$data = $wp->_getContent($category, $url['full']);
			$this->view->assign($data);
		}
		$this->view->render( 'blog.tpl', true );
	}

}
