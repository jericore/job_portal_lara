@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    <p>Name : {{$contact->name}} </p>
                    <p>Address : {{$contact->address}} </p>
                    <p>Phone : {{$contact->phone}} </p>
                </div>
                <div class="card-footer text-muted">
                    <p>Admin Saat Ini :</p>
                    <table class="table table-striped" border="0">
                        <thead>
                            <th>Name</th>
                            <th>Address</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td> {{Auth::user()->name}} </td>
                                <td> {{Auth::user()->profilee->address}} </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
