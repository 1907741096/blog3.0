<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/26
 * Time: 下午2:37
 */

namespace app\modules\models;

use yii\db\ActiveRecord;

class Admin extends ActiveRecord
{
    public $rememberMe = true;
    public static function tableName(){
        return "{{%admin}}";
    }

    public function rules(){
        return [
            ['username','required','message'=>'账号不能为空'],
            ['password','required','message'=>'密码不能为空'],
            ['rememberMe','boolean'],
            ['password','validatePass'],
        ];
    }

    public function validatePass(){
        if($this->hadErrors()){
            $data = self::find()->where('username=:user and password=:pass',[":user"=>$this->username,"：pass"=>$this->md5(password)]);
            if(is_null($data)){
                $this->addError('password',"账号密码错误");
            }
        }
    }

    public function login($data){
        if($this->load($data) && $this->validate()){

        }
        return false;
    }

}