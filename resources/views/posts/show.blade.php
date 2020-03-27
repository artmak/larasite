@extends('layouts.layout')
@section('title', "Post #$post->post_id. $post->title")
@section('content')
    <div class="row">


            <div class="col-12">
                <div class="card">
                    <img src="{{ $post->img ?? asset('img/default.jpg')}}" class="card-img-top" alt="card image">
                    <div class="card-body">
                        <h2 class="card-title">{{$post->title}}</h2>
                        <p class="card-text">{{ $post->descr }}</p>
                        <h3 class="card-author">Автор: {{$post->name}}</h3>
                        <h5 class="card-date">Пост создан: {{$post->updated_at->diffForHumans()}}</h5>
                        <a href="{{route('post.index')}}" class="btn btn-outline-primary">Вернуться на главную</a>
                        <a href="{{route('post.edit', ['id'=>$post->post_id])}}" class="btn btn-outline-success">Редактировать</a>
                        <form action="{{route('post.destroy', ['id'=>$post->post_id])}}" method="post" onsubmit="if (confirm('Точно удалить пост?')){ return true} else { return false}">
                            @csrf
                            @method('DELETE')
                            <input type="submit" class="btn btn-outline-danger" value="Удалить">
                        </form>
                    </div>
                </div>
            </div>


@endsection
