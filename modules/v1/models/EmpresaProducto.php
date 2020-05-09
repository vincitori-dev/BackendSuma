<?php

namespace app\modules\v1\models;

use Yii;

/**
 * This is the model class for table "empresa_producto".
 *
 * @property int $id
 * @property int $idEmpresa El identificador de la empresa que vende el producto
 * @property int $idProducto El identificador del producto vendido por la empresa
 */
class EmpresaProducto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'empresa_producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idEmpresa', 'idProducto'], 'required'],
            [['idEmpresa', 'idProducto'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idEmpresa' => 'El identificador de la empresa que vende el producto',
            'idProducto' => 'El identificador del producto vendido por la empresa',
        ];
    }

    /**
     * {@inheritdoc}
     * @return EmpresaProductoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new EmpresaProductoQuery(get_called_class());
    }
}
