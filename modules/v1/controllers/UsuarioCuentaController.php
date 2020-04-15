<?php

namespace app\modules\v1\controllers;

class UsuarioCuentaController extends \yii\rest\ActiveController
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
