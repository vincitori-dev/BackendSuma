<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "usuario".
 *
 * @property int $id
 * @property string $email El correo electronico del usuario
 * @property string $password La contraseña del usuario
 * @property string $name El nombre del usuario
 * @property int $date_of_birth La fecha de nacimiento del usuario
 * @property int $created_at La fecha de creación del usuario
 * @property int $updated_at La fecha de modificación del usuario
 * @property string $access_token El numero que se usará para la validación de usuario
 */
class Usuario extends \yii\db\ActiveRecord 
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['email', 'password', 'name', 'date_of_birth', 'created_at', 'updated_at', 'access_token'], 'required'],
            [['date_of_birth', 'created_at', 'updated_at'], 'integer'],
            [['email'], 'string', 'max' => 50],
            [['password', 'name'], 'string', 'max' => 40],
            [['access_token'], 'string', 'max' => 32],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'email' => 'El correo electronico del usuario',
            'password' => 'La contraseña del usuario',
            'name' => 'El nombre del usuario',
            'date_of_birth' => 'La fecha de nacimiento del usuario',
            'created_at' => 'La fecha de creación del usuario',
            'updated_at' => 'La fecha de modificación del usuario',
            'access_token' => 'El numero que se usará para la validación de usuario',
        ];
    }

}
