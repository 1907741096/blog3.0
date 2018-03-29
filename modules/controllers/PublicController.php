<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/26
 * Time: 下午2:42
 */

namespace app\modules\controllers;
use yii\web\Controller;
use app\modules\models\Admin;
use Yii;
//test

class PublicController extends Controller
{
    public $layout=false;
    public function actionIndex(){
        $model=new Admin;
        if(Yii::$app->request->ispost){
            $post=Yii::$app->request->post();
            if($model->login($post)){
                $this->redirect('default/index');
                Yii::$app->end();
            }
        }
        return $this->render('login',['model'=>$model]);
    }

}