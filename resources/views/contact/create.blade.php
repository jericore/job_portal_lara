@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <p> {{$error}} </p>
                @endforeach
            </div>

            <div class="card">
                <div class="card-header">Contacts</div>

                <form action=" {{ route('contact.store') }} " method="POST">
                    @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" name="address" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" name="phone" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </div>
                </form>
                <div class="card-footer text-muted">
                    <p>Name : {{Auth::user()->name}}</p>
                    <p>Address : {{Auth::user()->profilee->address}}</p>
                  </div>
            </div>
        </div>
    </div>
</div>
@endsection
