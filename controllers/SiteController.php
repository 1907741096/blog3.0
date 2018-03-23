<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/22
 * Time: 上午11:13
 */

namespace app\controllers;

use yii\web\Controller;
use app\models\Test;

class SiteController extends Controller
{
    public function actionIndex(){

        return $this->render("index");
    }
}