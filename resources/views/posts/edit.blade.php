@extends('layouts.layout')

@section('content')
    <form action="{{route('post.update', ['id'=>$post->post_id])}}" method="post" enctype="multipart/form-data">
        @csrf
        @method('PATCH')
        <h3>Редактировать пост</h3>
        @include('posts.parts.form')
        @if(mb_strlen($post->img)<1)
            <div class="alert alert-success" role="alert">
                Нет изображения
            </div>
        @endif
        <input type="submit" value="Сохранить пост" class="btn btn-outline-success">
    </form>
@endsection

