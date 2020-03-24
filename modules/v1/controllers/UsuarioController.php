<?php

namespace app\modules\v1\controllers;
use app\modules\v1\models\Usuario;
use yii\rest\ActiveController;

class UsuarioController extends \yii\rest\ActiveController
{
    /**
     * @var mixed
     */
    public $modelClass = Usuario::class;

    /**
     * @return mixed
     */
    public function behaviors()
    {
        $behaviors                  = parent::behaviors();
        /*$behaviors['authenticator'] =
            [
            'class'       => CompositeAuth::className(),
            'authMethods' =>
            [
                HttpBasicAuth::className(),  //id y password
                HttpBearerAuth::className(), //access_token
                QueryParamAuth::className(), //access_token
            ],

        ];*/
        /*$behaviors['basicAuth'] =
        [
        'class' => \yii\filters\auth\HttpBasicAuth::className(),
        'auth'  => function (
        $username,
        $password
        ) {
        $user = Usuario::find()->where(['username' => $username])->one();
        if ($user->verifyPassword($password)) {
        return $user;
        }
        return null;
        },
        ];*/
        return $behaviors;
    }

}
