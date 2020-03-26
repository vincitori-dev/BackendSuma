<?php

namespace app\modules\v1\models;

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
class Movimiento extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'movimiento';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['description', 'name', 'amount', 'created_at', 'updated_at', 'idCuenta', 'idUsuario'], 'required'],
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
     * {@inheritdoc}
     * @return MovimientoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MovimientoQuery(get_called_class());
    }
}
