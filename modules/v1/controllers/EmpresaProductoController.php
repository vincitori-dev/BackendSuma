<?php

namespace app\modules\v1\controllers;

class EmpresaProductoController extends \yii\rest\ActiveController
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
