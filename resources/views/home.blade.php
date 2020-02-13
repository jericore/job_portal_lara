@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    <form action="{{route('jobs.store')}}" method="POST">
                      @csrf
                      <input type="text" name="title" class="form-control">
                      <button type="submit" class="btn btn-success">Submit</button>
                    </form>
                    <?php var_dump($users); ?>

                    @if (count($users) >= 1)
                    <ul>
                      @foreach($users as $user)
                        <li>{{$user}}</li>
                      @endforeach
                    <ul>
                    @else
                    <ul>
                      <li>Ga ada Datanya</li>
                    </ul>
                    @endif

                    <p>{{Auth::user()->name}}</p>
                    <p>{{Auth::user()->profilee->address}}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
