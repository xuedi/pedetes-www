<?php
namespace Pedetes;

class layout_model extends \Pedetes\model {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	public function getBaseData() {
		$lang = $this->session->get('language');
		
		$retVal = array();

		$retVal['tplFile'] = $this->session->get('url')[0];
		$retVal['tplUserID'] = $this->session->get('user_id');
		$retVal['tplUserName'] = $this->session->get('user_name');
		$retVal['tplUserRole'] = $this->session->get('user_role');

		if($this->_hasDB()) {
			$i18n = $this->loadModel('i18n');
			$retVal['tplLanguageList'] = $i18n->getLanguages($lang);
			$retVal['tplLanguageListActive'] = $lang;
		}

		return $retVal;
	}

	private function _hasDB() {
		if(!isset($this->ctn['config']->getData()['database']['nodatabase'])) return true;
		if($this->ctn['config']['database']['nodatabase']) return false;
		return true;
	}

}