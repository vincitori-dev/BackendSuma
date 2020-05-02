<?php
namespace app\modules\v1\models;
use Yii;
use yii\base\Model;
use app\modules\v1\resources\UserResource;

class SignupForm extends Model
{
    public $username;
    public $password;
    public $password_repeat;

    public $_user = false;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            ['username','unique',
                'targetClass' => '\app\modules\v1\resources\UserResource',
                'message' => 'This username has already been taken',
        ],
            // username and password are both required

            [['username', 'password', 'password_repeat'], 'required'],
            //comparamos que las dos contraseñas sean iguales
            ['password','compare','compareAttribute' => 'password_repeat'],
        ];
    }


    public function register()
    {
        $this->_user = new UserResource();
        if ($this->validate()) {
            $security = \Yii::$app->security;
        
            $this->_user->username = $this->username;
            $this->_user->password_hash = $security->generatePasswordHash($this->password);
            $this->_user->access_token = $security->generateRandomString(32);
            if( $this->_user->save()){
                return true;
            }
            return false;
            
        }
        return false;
    }

    
}
