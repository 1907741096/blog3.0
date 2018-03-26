<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2018/3/22
 * Time: 下午5:34
 */

namespace app\controllers;

use yii\web\Controller;
use app\models\Image;
use Yii;
use yii\data\Pagination;

class ImageController extends Controller
{

    public function actionIndex(){

        $imgModel = Image::find();

        $count=$imgModel->count();
        $pageSize = Yii::$app->params['pageSize'];

        $pager = new Pagination(['totalCount'=>$count,'pageSize'=>$pageSize]);

        $images=$imgModel->offset($pager->offset)->orderBy('id desc')->limit($pager->limit)->all();

        return $this->render('index',['images'=>$images,'pager'=>$pager]);
    }
    public function loadajax(){

    }

}