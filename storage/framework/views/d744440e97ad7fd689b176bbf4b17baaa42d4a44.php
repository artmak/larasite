<?php $__env->startSection('content'); ?>
    <form action="<?php echo e(route('post.update', ['id'=>$post->post_id])); ?>" method="post" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <?php echo method_field('PATCH'); ?>
        <h3>Редактировать пост</h3>
        <?php echo $__env->make('posts.parts.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php if(mb_strlen($post->img)<1): ?>
            <div class="alert alert-success" role="alert">
                Нет изображения
            </div>
        <?php endif; ?>
        <input type="submit" value="Сохранить пост" class="btn btn-outline-success">
    </form>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vagrant/code/lrsite/resources/views/posts/edit.blade.php ENDPATH**/ ?>