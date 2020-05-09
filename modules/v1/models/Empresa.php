<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "empresa".
 *
 * @property int $id El identificador de la empresa
 * @property string $name El nombre de la empresa
 * @property int $created_at Fecha de creación de la tupla empresa
 * @property int $updated_at Fecha de modificación de los valores de la tupla empresa
 */
class Empresa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'empresa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'created_at', 'updated_at'], 'required'],
            [['created_at', 'updated_at'], 'integer'],
            [['name'], 'string', 'max' => 40],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'El identificador de la empresa',
            'name' => 'El nombre de la empresa',
            'created_at' => 'Fecha de creación de la tupla empresa',
            'updated_at' => 'Fecha de modificación de los valores de la tupla empresa',
        ];
    }

    /**
     * {@inheritdoc}
     * @return EmpresaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new EmpresaQuery(get_called_class());
    }
}
