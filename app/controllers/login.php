<?php

class login extends Pedetes\controller
{

    function __construct($ctn)
    {
        parent::__construct($ctn);
    }

    function indexAction()
    {
        $this->view->render('login.twig');
    }

    function actionAction()
    {
        if ($this->session->get('user_id')) {
            $this->session->set('user_id', "");
            $this->session->set('user_name', "");
            $this->session->set('user_role', "");
            header("Location: /");
        }

        $userModel = $this->loadModel('user');
        $username = $this->request->getText('username');
        $password = $this->request->getFree('password');
        if ($userModel->login($username, $password)) {
            $this->ajaxResponse(null, '/admin');
        } else {
            $this->ajaxError('Could not login', '/login');
        }
    }


}
