<?php $__env->startSection('title', "Создать новый пост"); ?>
<?php $__env->startSection('content'); ?>
    <form action="<?php echo e(route('post.store')); ?>" method="post" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <h3>Создать пост</h3>
      <?php echo $__env->make('posts.parts.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <input type="submit" value="Создать пост" class="btn btn-outline-success">
    </form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/vagrant/code/larasite/resources/views/posts/create.blade.php ENDPATH**/ ?>