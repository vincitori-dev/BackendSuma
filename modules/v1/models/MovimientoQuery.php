<?php

namespace app\modules\v1\models;

/**
 * This is the ActiveQuery class for [[Movimiento]].
 *
 * @see Movimiento
 */
class MovimientoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Movimiento[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
        //return parent::where(['idUsuario'=>\Yii::$app->user->id])->all($db);
        //return parent::all($db)->where(['idUsuario'=>\Yii::$app->user->id]);
        //return parent::find();
    }

    /**
     * {@inheritdoc}
     * @return Movimiento|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
