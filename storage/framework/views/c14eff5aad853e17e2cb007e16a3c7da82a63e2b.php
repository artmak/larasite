<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="<?php echo e(URL::asset('css/app.css')); ?>" type="text/css" >
    <link rel="stylesheet" href="<?php echo e(asset('css/style.css')); ?>" type="text/css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Мой сайт</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="container collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="col-6 navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Главная <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active offset-3">
                <a class="nav-link" href="<?php echo e(route('post.create')); ?>">Создать пост <span class="sr-only">(current)</span></a>
            </li>


        </ul>
        <form class="form-inline my-2 my-lg-0" action="<?php echo e(route('post.index')); ?>">
            <input class="form-control mr-sm-2" name="search" type="search" placeholder="Найти пост..." aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
        </form>
    </div>
</nav>

<div class="container">
    <?php if(session('success')): ?>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
    <?php echo e(session('success')); ?>

        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <?php endif; ?>
<?php echo $__env->yieldContent('content'); ?>
</div>
</body>
<script src="<?php echo e(asset('js/app.js')); ?>"></script>
</html>
<?php /**PATH /home/vagrant/code/lrsite/resources/views/layouts/layout.blade.php ENDPATH**/ ?>