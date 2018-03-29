<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/22
 * Time: 下午3:33
 */

use Yii\db\ActiveRecord;

class Index extends ActiveRecord {

    public static function talbeName(){
        return "{{%artile}}";
    }

}