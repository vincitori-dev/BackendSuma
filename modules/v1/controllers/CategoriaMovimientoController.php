<?php

namespace app\modules\v1\controllers;

class CategoriaMovimientoController extends \yii\rest\ActiveController
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
