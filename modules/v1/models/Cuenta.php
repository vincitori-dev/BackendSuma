<?php

namespace app\modules\v1\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;
use yii\db\Expression;
use app\models\User;
use yii\behaviors\AttributesBehavior;
use \yii\db\ActiveRecord;

/**
 * This is the model class for table "cuenta".
 *
 * @property int $id El identificador de la cuenta
 * @property string $name El nombre que el usuario pone a la cuenta
 * @property int $distribution Cantidad entre 0 y 100 que se refiere al porcentaje que el usuario asigna a esta cuenta
 * @property int $amount La cantidad total disponible en esa cuenta
 * @property int $color
 * @property int $icon
 * @property int $created_at Fecha de creación de la cuenta
 * @property int $updated_at Fecha de modificación de la cuenta
 */
class Cuenta extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cuenta';
    }
    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
        [
            'class' => AttributesBehavior::className(),
            'attributes' => [
                'amount' =>[
                    //Una vez se haya creado la nueva cuenta actualizamos el valor de la distribucion
                    ActiveRecord::EVENT_AFTER_INSERT => [$this, 'setCreador'],
                ],
               
            ],
        ],
    ];
}
    /**
     * Funcion que permite actualizar el valor 'distribution' que permite al usuario repartir sus
     * ingresos entre diferentes cuentas
     */
    public function setCreador(){
        $usuarioCuenta = new UsuarioCuenta();
        $usuarioCuenta->idUsuario = \Yii::$app->user->id;
        $usuarioCuenta->idCuenta = $this->id;
        $usuarioCuenta->distribution = $this->distribution;
        $usuarioCuenta->save();
        //Actilizamos la cifra global de 'distribution' del usuario
        $usuario = User::findOne(\Yii::$app->user->id);
        $usuario->distribution = $usuario->distribution - $this->distribution;
        $usuario->save();
        //return $cuenta->amount;
    }
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'distribution', 'color'], 'required'],
            [['distribution', 'color', 'icon', 'created_at', 'updated_at'], 'integer'],
            [['amount'],'number'],
            [['name','description'], 'string', 'max' => 40],
        ];
    }
    /**
     * Funcion que determina que campos se van a devolver
     * Comentar aquellos campos que no se quieran mostrar
     * @return [type] [description]
     */
    public function fields()
    {
        //Poner en el array los campos que se quieran mostrar
        return [
            'id',
            'name',
            'description',
            //'distribution',
            'amount',
            'color',
            'icon',
            'created_at',
            'updated_at',
            //'propietarios',
            //'distribution_N',
            'XXXXX',
            'movimientos',
        ];
    }
    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'El identificador de la cuenta',
            'name' => 'El nombre que el usuario pone a la cuenta',
            'description' => 'La descripción de la cuenta',
            //'distribution' => 'Cantidad entre 0 y 100 que se refiere al porcentaje que el usuario asigna a esta cuenta',
            'amount' => 'La cantidad total disponible en esa cuenta',
            'color' => 'Color',
            'icon' => 'Icon',
            'created_at' => 'Fecha de creación de la cuenta',
            'updated_at' => 'Fecha de modificación de la cuenta',

        ];
    }

    /**
     * {@inheritdoc}
     * @return CuentaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CuentaQuery(get_called_class());
    }
    /**
     * Funcion auxiliar para obtener los propietarios de la cuenta
     * dado que es una relacion n:m es necesario relacionarse con la tabla
     * auxiliar 'usuarioCuenta' para conectar 'user' y 'cuenta'
     * @return mixed
     */
    public function getUsuarioCuenta()
    {
        return $this->hasMany(UsuarioCuenta::className(), ['idCuenta' => 'id']);
    }
    /**
     * Funcion que devuelve los 'user' propietarios de la cuenta
     * $cuenta->getPropietarios() devuelve una instancia ActiveQuery
     * @return $cuenta->propietarios devuelve una array de 'user' objetos
     */
    public function getPropietarios()
    {
        return $this->hasMany(User::className(), ['id' => 'idUsuario'])
                    ->via('usuarioCuenta');
    }
    public function getMovimientos()
    {
        return $this->hasMany(Movimiento::className(),['idCuenta'=>'id']);
    }
    /**
     * @return mixed
     */
    public function getPropietariosDistribution()
    {
        return $this->hasMany(UsuarioCuenta::className(), ['idCuenta' => 'id'])->with('propietario');
    }
    /**
     * @return mixed
     */
    public function getXXXXX()
    {
        $lista     = $this->propietariosDistribution;
        $resultado = [];
        foreach ($lista as $pd) {
            $resultado[] = [
                'username'         => $pd->propietario->username,
                //'email'        => $pd->propietario->email,
                'distribution' => $pd->distribution,
            ];
        }
        return $resultado;
    }

}
