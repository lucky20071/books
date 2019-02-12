<div class="admin-default-index">
    <h1 style="color:#004900;">Админка</h1>
<div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                             
                                <li class="dropdown" style="margin-left:0 !important;"><a href="#">Авторы<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li style="margin-left:0 !important;"><a href="<?=\yii\helpers\Url::to(['authors/index']) ?>">Список авторов</a></li>
                                        <li style="margin-left:0 !important;"><a href="<?=\yii\helpers\Url::to(['authors/create']) ?>">Добавить автора</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Книги<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="<?=\yii\helpers\Url::to(['books/index']) ?>">Список книг</a></li>
                                        <li style="margin-left:0 !important;"><a href="<?=\yii\helpers\Url::to(['books/create']) ?>">Добавить книгу</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
</div>
