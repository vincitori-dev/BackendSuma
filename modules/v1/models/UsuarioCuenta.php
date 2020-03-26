<?php

namespace app\modules\v1\models;
use app\models\User;
use Yii;

/**
 * This is the model class for table "usuario_cuenta".
 *
 * @property int $id
 * @property int $idUsuario El identificador de usuario asociado a la cuenta
 * @property int $idCuenta El identificador de la cuenta asociada al usuario
 * @property int $distribution Porcentaje de la cantidad introducidad por cada propietario de la cuenta
 */
class UsuarioCuenta extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario_cuenta';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idUsuario', 'idCuenta', 'distribution'], 'required'],
            [['idUsuario', 'idCuenta', 'distribution'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idUsuario' => 'El identificador de usuario asociado a la cuenta',
            'idCuenta' => 'El identificador de la cuenta asociada al usuario',
            'distribution' => 'Porcentaje de la cantidad introducidad por cada propietario de la cuenta',
        ];
    }
    /**
     * @return mixed
     */
    public function getPropietario()
    {
        return $this->hasOne(User::className(), ['id' => 'idUsuario']);
    }

    /**
     * {@inheritdoc}
     * @return UsuarioCuentaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new UsuarioCuentaQuery(get_called_class());
    }
}
