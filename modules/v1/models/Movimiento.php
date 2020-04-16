<?php

namespace app\modules\v1\models;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\AttributesBehavior;
use yii\db\ActiveRecord;
use Yii;

/**
 * This is the model class for table "movimiento".
 *
 * @property int $id
 * @property string $description Un resumen de lo que consiste la transaccion
 * @property string $name El nombre que el usuario da a la transaccion
 * @property int $amount La cantidad asociada a la transacción
 * @property int $created_at La fecha en la que se ha creado la transaccion
 * @property int $updated_at La fecha de modificación del movimiento
 * @property int $idCuenta El identificador de la cuenta asociada a este movimiento
 * @property int $idUsuario
 */
class Movimiento extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'movimiento';
    }
    public function behaviors()
    {
        return [
                TimestampBehavior::className(),
            [
                'class' => BlameableBehavior::className(),
                'createdByAttribute' => 'idUsuario',
                'updatedByAttribute' => false,
            ],
            [
                'class' => AttributesBehavior::className(),
                'attributes' => [
                    'created_at' => [
                        ActiveRecord::EVENT_BEFORE_INSERT => \Yii::$app->formatter->asDatetime('2017-07-13'),
                        ActiveRecord::EVENT_BEFORE_UPDATE => \Yii::$app->formatter->asDatetime('2017-07-13'),
                    ],
                    'amount' =>[
                        //Una vez se haya creado el nuevo movimiento, actualizamos el valor de la cuenta
                        ActiveRecord::EVENT_AFTER_INSERT => [$this, 'setAmount'],
                    ],
                   
                ],
            ],
        ];
    }
    /**
     * Funcion que permite actualizar el valor 'amount' (la cantidad total de la cuenta) de la cuenta 
     * especificada con el 'amount' del movimimiento
     */
    public function setAmount(){
        $cuenta = Cuenta::findOne($this->idCuenta);
        $cuenta->amount = $cuenta->amount+$this->amount;
        $cuenta->save();
        //return $this->amount; 
        return $cuenta->amount;
    }
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['description', 'name', 'amount', 'idCuenta'], 'required'],
            [['amount', 'created_at', 'updated_at', 'idCuenta', 'idUsuario'], 'integer'],
            [['description'], 'string', 'max' => 100],
            [['name'], 'string', 'max' => 40],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'description' => 'Un resumen de lo que consiste la transaccion',
            'name' => 'El nombre que el usuario da a la transaccion',
            'amount' => 'La cantidad asociada a la transacción',
            'created_at' => 'La fecha en la que se ha creado la transaccion',
            'updated_at' => 'La fecha de modificación del movimiento',
            'idCuenta' => 'El identificador de la cuenta asociada a este movimiento',
            'idUsuario' => 'Id Usuario',
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
            'amount',
            'idCuenta',
            'idUsuario',
            'created_at',
            'updated_at',
        ];
    }
    /**
     * {@inheritdoc}
     * @return MovimientoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MovimientoQuery(get_called_class());
    }
}
