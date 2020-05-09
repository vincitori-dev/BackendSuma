<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "categoria".
 *
 * @property int $id El identificador de la categoría de movimiento
 * @property string $name El nombre de la categoría de movimiento
 * @property string $description La descripción de la categoría de movimiento
 * @property int $type Categoría de tipo ingreso (0) Categoría de tipo gasto (1)
 */
class Categoria extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categoria';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'description'], 'required'],
            [['type'], 'integer'],
            [['name'], 'string', 'max' => 40],
            [['description'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'El identificador de la categoría de movimiento',
            'name' => 'El nombre de la categoría de movimiento',
            'description' => 'La descripción de la categoría de movimiento',
            'type' => 'Categoría de tipo ingreso (0) Categoría de tipo gasto (1)',
        ];
    }

    /**
     * {@inheritdoc}
     * @return CategoriaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CategoriaQuery(get_called_class());
    }
}
