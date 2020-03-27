<?php $__env->startSection('title', "Гавная страница сайта"); ?>

<?php $__env->startSection('content'); ?>
    <?php if(isset($_GET['search'])): ?>

        <?php if(count($posts)>0): ?>
            <h2>Результаты поиска по запросу <?php$_GET['search']?></h2>
            <p class="lead">Всего найдено <?php echo e(count($posts)); ?>

                <?php if(count($posts)==1): ?>пост
                <?php elseif(count($posts)<5): ?>поста
                <?php else: ?> постов
                <?php endif; ?>
            </p>

        <?php else: ?>
        <h2>По запросу <?php$_GET['search']?> ничего не найдено</h2>
            <a href="<?php echo e(route('post.index')); ?>" class="btn btn-info">Отобразить все посты</a>

        <?php endif; ?>

    <?php endif; ?>
    <div class="row">
        <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-6">
            <div class="card">
                <img src="<?php echo e($post->img ?? asset('img/default.jpg')); ?>" class="card-img-top" alt="card image">
                <div class="card-body">
                    <h2 class="card-title"><?php echo e($post->title); ?></h2>
                    <p class="card-text" hidden><?php echo e($post->descr); ?></p>
                    <h5 class="card-author">Автор: <?php echo e($post->name); ?></h5>
                    <h5 class="card-date">Пост создан: <?php echo e($post->updated_at->diffForHumans()); ?></h5>
                    <a href="<?php echo e(route('post.show', ['id' => $post->post_id])); ?>" class="btn btn-outline-primary">Постмотреть пост - <?php echo e($post->short_title); ?></a>

                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>

    <?php if(!isset($_GET['search'])): ?>
    <?php echo e($posts->links()); ?>

        <?php endif; ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vagrant/code/larasite/resources/views/posts/index.blade.php ENDPATH**/ ?>