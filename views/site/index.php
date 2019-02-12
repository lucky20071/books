<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\grid\GridView;

$this->title = 'Авторы и Книги';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Книжный Сайт</h1>

        <p class="lead">Здесь можно выбрать книги</p>

       
    </div>

    <div class="body-content" style="text-align:center;">

        <div class="row">
            <div class="col-lg-12">
 
 <a href="<?= \yii\helpers\Url::to(['authors/index']) ?>" class="btn-lg btn-success">Авторы</a>
             </div>
           </div>
             <br>
            <div class="col-lg-12">
  <div class="row">
  <a href="<?= \yii\helpers\Url::to(['books/index']) ?>" class="btn-lg btn-success">Книги</a>
              </div>
           </div>  
        </div>

    </div>
</div>
