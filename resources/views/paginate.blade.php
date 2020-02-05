@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @foreach($user as $u)
                      <p>{{$u->name}}</p>
                    @endforeach
                    {{$user->links()}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
