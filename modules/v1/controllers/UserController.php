<?php

namespace app\modules\v1\controllers;

use yii\rest\Controller;
use app\modules\v1\models\LoginForm;
use app\modules\v1\models\SignupForm;

/**
 * User controller for the `v1` module
 */
class UserController extends Controller
{
    /**
     * Funcion que permite logearse en la aplicacion
     * @return string devuelve un token de acceso
     */
    public function actionLogin()
    {

        $model = new LoginForm();
        if ($model->load(\Yii::$app->request->post(),'') && $model->login()) {
            return $model->getUser();
        }
        \Yii::$app->response->statusCode =422;
        $model->password = '';
        return [
            'errors' => $model->errors
        ];
    }
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(\Yii::$app->request->post(),'') && $model->register()) {
            return $model->_user;
        }
        \Yii::$app->response->statusCode =422;
        return [
            'errors' => $model->errors
        ];
    }
}
