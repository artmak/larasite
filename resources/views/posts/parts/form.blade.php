<div class="form-group">
    <input name="title" type="text" class="form-control"  required value="{{$post->title ?? ''}}">
</div>
<div class="form-group">
    <textarea name="descr" rows="10" class="form-control" required>{{$post->descr ?? ''}}</textarea>
</div>
<div class="form-group">

    <img src="{{$post->img ?? ''}}" width="35%" alt="">
    <input name="img" type="file" >
</div>
