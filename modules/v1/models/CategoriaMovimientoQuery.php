<?php

namespace app\modules\v1\models;

/**
 * This is the ActiveQuery class for [[CategoriaMovimiento]].
 *
 * @see CategoriaMovimiento
 */
class CategoriaMovimientoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return CategoriaMovimiento[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return CategoriaMovimiento|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
