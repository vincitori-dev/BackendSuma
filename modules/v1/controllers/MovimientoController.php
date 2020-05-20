<?php

namespace app\modules\v1\controllers;
use app\modules\v1\resources\MovimientoResource;
use yii\rest\ActiveController;
use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\CompositeAuth;
/**
 * Controlador de Movimientos
 */
class MovimientoController extends ActiveController
{
    /**
     * @var mixed
     */
    public $modelClass = MovimientoResource::class;

    /**
     * @return mixed
     */
    public function behaviors()
    {
        $behaviors                  = parent::behaviors();
        //Autenticamos a los usuarios con token de acceso
        $behaviors['authenticator'] =
            [
            'class'       => CompositeAuth::className(),
            'authMethods' =>
            [
                HttpBearerAuth::className(), //access_token
            ],

        ];
        return $behaviors;
    }
    public function actions()
    {
        $actions = parent::actions();
        //Hacemos que solo devuelva los datos del usuario
        $actions['index']['prepareDataProvider'] = function($action) 
        {
            return new \yii\data\ActiveDataProvider([
               'query' => MovimientoResource::find()->where(['idUsuario' => \Yii::$app->user->id]),
               'pagination' => [
                'pageSizeLimit' => [0, 50],
                'PageSize' => 0,
            ],
            ]);
        };
        return $actions;
    }
    //ACCIONES VACIAS PARA DOCUMENTACIÓN
    /**
     * Rest Description: Crear un nuevo movimiento.
     * Rest Fields: ['id','name','description','amount','idCuenta'].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionCreate(){}
    /**
     * Rest Description: Obtener movimientos del usuario autentificado.
     * Rest Fields: [].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionIndex(){}
    /**
     * Rest Description: Eliminar movimiento seleccionada.
     * Rest Fields: [].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionDelete(){}
    /**
     * Rest Description: Ver datos del movimiento seleccionada.
     * Rest Fields: [].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionView(){}
    /**
     * Rest Description: Actualizar los datos de un movimiento especifico.
     * Rest Fields: ['id','name','description','amount','idCuenta'].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionUpdate(){}
    /**
     * Rest Description: Accion que devuelve el total de cuentas del usuario.
     * Rest Fields: [].
     * Rest Filters: [].
     * Rest Expand: [].
     */
    public function actionTotal(){
        $nmovimientos = MovimientoResource::find()->where(['idUsuario' => \Yii::$app->user->id])->count();
        return $nmovimientos;
    }
}
