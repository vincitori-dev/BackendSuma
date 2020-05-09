<?php

namespace app\modules\v1\controllers;

class ProductoController extends \yii\rest\ActiveController
{
    public $modelClass = ProductoResource::class;
    public function actionIndex()
    {
        return $this->render('index');
    }

}
