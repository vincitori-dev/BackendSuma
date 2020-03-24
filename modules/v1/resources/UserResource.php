<?php
namespace app\modules\v1\resources;

use app\models\User;

class UserResource extends User
{
    public function fields()
    {
        return['id','username', 'access_token'];
    }
}