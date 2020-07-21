@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                  <p>{{Auth::user()->name}}</p>
                  <p><b>{{Auth::user()->profilee->address}}</b></p>
                  <p>
                  @foreach($posts as $post)


                    
                    <p>{{$post->title}}</p>
                    @foreach ($post->tagg as $item)
                        {{$item->name}},
                    @endforeach
                    <hr>
                  @endforeach
                </p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
