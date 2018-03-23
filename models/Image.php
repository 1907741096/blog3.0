<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/23
 * Time: 下午8:15
 */

namespace app\models;


use yii\db\ActiveRecord;

class Image extends ActiveRecord
{
    public static function tableName(){
        return "{{%img}}";
    }
}