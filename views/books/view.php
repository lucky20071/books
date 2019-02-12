<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Books */

$this->title = $model->book_name;
$this->params['breadcrumbs'][] = ['label' => 'Книги', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="books-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <div class="col-md-12 col-sm-12 col-xs-12">
    <h4>автор: <?= $model->author_name ?></h4>
    <div class="row">
    <?= $model->descr ?>
    </div>
    <div class="row">
    
    </div>
   
    </div> 
    
   
</div>
