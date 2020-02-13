@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                  <p>{{Auth::user()->name}}</p>
                  <p>{{Auth::user()->profilee->address}}</p>
                  @foreach($posts as $post)



                    <p>{{$post->title}}</p>|{{$post->users->name}}
                    <hr>
                  @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
