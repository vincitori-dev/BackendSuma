<?php

namespace app\modules\v1\controllers;
use app\modules\v1\resources\CuentaResource;
use yii\rest\ActiveController;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\CompositeAuth;

class CuentaController extends ActiveController
{
    /**
     * @var mixed
     */
    public $modelClass = CuentaResource::class;

    /**
     * @return mixed
     */
    public function behaviors()
    {
        $behaviors                  = parent::behaviors();
        $behaviors['authenticator'] =
            [
            'class'       => CompositeAuth::className(),
            'authMethods' =>
            [
                //HttpBasicAuth::className(),  //id y password
                HttpBearerAuth::className(), //access_token
                //QueryParamAuth::className(), //access_token
            ],

        ];
        return $behaviors;
    }

    public function actions()
    {
        $actions = parent::actions();
        //unset($actions['index']);
        //Hacemos que solo devuelva los datos del usuario
        $actions['index']['prepareDataProvider'] = function($action) 
        {
            return new \yii\data\ActiveDataProvider([
               'query' => CuentaResource::find()->joinWith('propietarios')->where(['idUsuario'=>\Yii::$app->user->id]),
            ]);
        };
        return $actions;
    }
}
