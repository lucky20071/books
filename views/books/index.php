<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Книги';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="books-index">

    <h1><?= Html::encode($this->title) ?></h1>

   <?php foreach($book as $nov): ?>

    <div class="col-md-12 col-sm-12 col-xs-12">

   <h2><?= $nov->book_name ?></h2>
  
   <br> 
   <h4>автор: <?= $nov->author_name ?></h4>
   <?= strip_tags (mb_substr($nov->descr,0,570, 'UTF-8'), '<p><img><a>')?>... 
    <br>
    <a href="<?= \yii\helpers\Url::to(['books/view', 'id' => $nov->id]) ?>" class="btn btn-danger">Подробнее</a>
       </div> 

    <?php endforeach;?>
    
</div>
