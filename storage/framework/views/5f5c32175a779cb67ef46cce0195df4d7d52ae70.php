<div class="form-group">
    <input name="title" type="text" class="form-control"  required value="<?php echo e($post->title ?? ''); ?>">
</div>
<div class="form-group">
    <textarea name="descr" rows="10" class="form-control" required><?php echo e($post->descr ?? ''); ?></textarea>
</div>
<div class="form-group">

    <img src="<?php echo e($post->img ?? ''); ?>" width="35%" alt="">
    <input name="img" type="file" >
</div>
<?php /**PATH /home/vagrant/code/lrsite/resources/views/posts/parts/form.blade.php ENDPATH**/ ?>