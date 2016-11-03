<?php
namespace Pedetes;

class layout_model extends \Pedetes\model {

	function __construct($ctn) {
		parent::__construct($ctn);
	}

	public function getBaseData() {
		$lang = $this->mem->get('language');
		
		$retVal = array();
		$retVal['tplFile'] = $this->mem->get('url')[0];
		$retVal['tplUserID'] = $this->mem->get('user_id');
		$retVal['tplUserName'] = $this->mem->get('user_name');
		$retVal['tplUserRole'] = $this->mem->get('user_role');

		if($this->_hasDB()) {
			$i18n = $this->loadModel('i18n');
			$retVal['tplLanguageList'] = $i18n->getLanguages($lang);
			$retVal['tplLanguageListActive'] = $lang;
		}

		return $retVal;
	}

	private function _hasDB() {
		if(!isset($this->ctn['config']['database']['nodatabase'])||$this->ctn['config']['database']['nodatabase']) return false;
		return true;
	}

}