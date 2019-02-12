<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Авторы';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="authors-index">

    <h1><?= Html::encode($this->title) ?></h1>

<?php foreach($avt as $novs): ?>

    <div class="col-md-12 col-sm-12 col-xs-12">

   <h2><?= $novs->name ?></h2>
  
   <br> 
 
   <?= strip_tags (mb_substr($novs->description,0,570, 'UTF-8'), '<p><img><a>')?>... 
    <br>
    <a href="<?= \yii\helpers\Url::to(['authors/view', 'id' => $novs->id]) ?>" class="btn btn-danger">Подробнее</a>
       </div> 

    <?php endforeach;?>
   
</div>
