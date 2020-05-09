<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property int $id El identificador del producto
 * @property int $name El nombre del producto
 * @property int $price El precio del producto
 */
class Producto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'price'], 'required'],
            [['name', 'price'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'El identificador del producto',
            'name' => 'El nombre del producto',
            'price' => 'El precio del producto',
        ];
    }

    /**
     * {@inheritdoc}
     * @return ProductoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProductoQuery(get_called_class());
    }
}
