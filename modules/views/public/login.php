<?php
    use yii\bootstrap\ActiveForm;
    use yii\helpers\Html;
?>

<html>
<head>

</head>
<body>

<?php $form=ActiveForm::begin();?>
    <?php $form = ActiveForm::begin([
            'fieldConfig'=>[
                    'template'=>'{input}'
            ]
    ]);?>
    <?php echo $form->field($model,'username')->textInput(["placeholder"=>"账号"]); ?>
    <?php echo $form->field($model,'password')->textInput(["placeholder"=>"密码"]); ?>
    <?php echo $form->field($model,'rememberMe')->checkbox([
        'id'=>'remember-me',
        'template'=>'<div class="remember">{input}<label for="remember-me">记住我</label></div>'
    ]);?>
    <?php echo Html::submitButton('登录',[]);?>


<?php ActiveForm::end();?>

</body>
</html>