<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "categoria_movimiento".
 *
 * @property int $id
 * @property int $idCategoria
 * @property int $idMovimiento
 */
class CategoriaMovimiento extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categoria_movimiento';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idCategoria', 'idMovimiento'], 'required'],
            [['idCategoria', 'idMovimiento'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idCategoria' => 'Id Categoria',
            'idMovimiento' => 'Id Movimiento',
        ];
    }

    /**
     * {@inheritdoc}
     * @return CategoriaMovimientoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CategoriaMovimientoQuery(get_called_class());
    }
}
