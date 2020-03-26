@extends('layouts.layout')

@section('content')
    @if(isset($_GET['search']))

        @if(count($posts)>0)
            <h2>Результаты поиска по запросу <?php$_GET['search']?></h2>
            <p class="lead">Всего найдено {{count($posts)}}
                @if(count($posts)==1)пост
                @elseif(count($posts)<5)поста
                @else постов
                @endif
            </p>

        @else
        <h2>По запросу <?php$_GET['search']?> ничего не найдено</h2>
            <a href="{{route('post.index')}}" class="btn btn-info">Отобразить все посты</a>

        @endif

    @endif
    <div class="row">
        @foreach($posts as $post)
        <div class="col-6">
            <div class="card">
                <img src="{{ $post->img ?? asset('img/default.jpg')}}" class="card-img-top" alt="card image">
                <div class="card-body">
                    <h2 class="card-title">{{$post->title}}</h2>
                    <p class="card-text" hidden>{{ $post->descr }}</p>
                    <h5 class="card-author">Автор: {{$post->name}}</h5>
                    <a href="{{route('post.show', ['id' => $post->post_id])}}" class="btn btn-outline-primary">Постмотреть пост - {{ $post->short_title }}</a>

                </div>
            </div>
        </div>
        @endforeach
    </div>

    @if(!isset($_GET['search']))
    {{$posts->links()}}
        @endif

@endsection
