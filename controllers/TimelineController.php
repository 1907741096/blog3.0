<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/22
 * Time: 下午5:40
 */

namespace app\controllers;


use yii\web\Controller;

class TimelineController extends Controller
{
    public function actionIndex(){
        return $this->render('index');
    }
}