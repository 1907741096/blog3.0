<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/22
 * Time: 上午11:57
 */

namespace app\models;

use yii\base\Model;
use yii\db\ActiveRecord;

class Test extends ActiveRecord
{
    public static function talbeName(){
        return "{{%test}}";
    }
}