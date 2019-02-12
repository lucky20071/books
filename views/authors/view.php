<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Authors */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Авторы', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="authors-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="row">
    <?= $model->description ?>
    </div>
    <div class="row">
    <h2>Книги автора <?= Html::encode($this->title) ?></h2>
    </div>
    <div class="row">
     <?php foreach($kn as $kns): ?>

     <h4><a href="<?= \yii\helpers\Url::to(['books/view', 'id' => $kns->id]) ?>" ><?= $kns->book_name ?></a></h4>
     
    <?php endforeach;?> 
    </div>
      </div> 
    
</div>
