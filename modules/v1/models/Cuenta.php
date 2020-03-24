<?php

namespace app\modules\v1\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;
use yii\db\Expression;

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
        ];
    }
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'distribution', 'amount', 'color', 'icon'], 'required'],
            [['distribution', 'amount', 'color', 'icon', 'created_at', 'updated_at'], 'integer'],
            [['name'], 'string', 'max' => 40],
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
            'distribution' => 'Cantidad entre 0 y 100 que se refiere al porcentaje que el usuario asigna a esta cuenta',
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
}
