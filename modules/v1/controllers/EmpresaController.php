<?php

namespace app\modules\v1\controllers;

class EmpresaController extends \yii\rest\ActiveController
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
