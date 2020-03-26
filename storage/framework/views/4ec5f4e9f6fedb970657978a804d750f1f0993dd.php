<?php $__env->startSection('content'); ?>
    <div class="row">


            <div class="col-12">
                <div class="card">
                    <img src="<?php echo e($post->img ?? asset('img/default.jpg')); ?>" class="card-img-top" alt="card image">
                    <div class="card-body">
                        <h2 class="card-title"><?php echo e($post->title); ?></h2>
                        <p class="card-text"><?php echo e($post->descr); ?></p>
                        <h3 class="card-author">Автор: <?php echo e($post->name); ?></h3>
                        <h3 class="card-date">Пост создан: <?php echo e($post->created_at->diffForHumans()); ?></h3>
                        <a href="<?php echo e(route('post.index')); ?>" class="btn btn-outline-primary">Вернуться на главную</a>
                        <a href="<?php echo e(route('post.edit', ['id'=>$post->post_id])); ?>" class="btn btn-outline-success">Редактировать</a>
                        <form action="<?php echo e(route('post.destroy', ['id'=>$post->post_id])); ?>" method="post" onsubmit="if (confirm('Точно удалить пост?')){ return true} else { return false}">
                            <?php echo csrf_field(); ?>
                            <?php echo method_field('DELETE'); ?>
                            <input type="submit" class="btn btn-outline-danger" value="Удалить">
                        </form>
                    </div>
                </div>
            </div>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vagrant/code/larasite/resources/views/posts/show.blade.php ENDPATH**/ ?>