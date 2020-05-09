<?php

namespace app\modules\v1\controllers;

class CategoriaController extends \yii\rest\ActiveController
{
    public $modelClass = CategoriaResource::class;
    public function actionIndex()
    {
        return $this->render('index');
    }

}
