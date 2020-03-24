<?php
namespace app\modules\v1\models;
use app\modules\v1\resources\UserResource;

class LoginForm extends \app\models\LoginForm
{
    
    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    public function getUser()
    {
        if ($this->_user === false) {
            $this->_user = UserResource::findByUsername($this->username);
        }

        return $this->_user;
    }
}