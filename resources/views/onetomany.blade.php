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
                  @foreach($users as $user)
                      @foreach($user->postss as $post)
                        <p>{{$post->title}}
                      @endforeach
                    <p>{{$user->name}}</p>
                    <hr>
                  @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
