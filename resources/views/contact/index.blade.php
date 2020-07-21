@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card">
                <div class="card-header">Contact
                <span class="float-right"><a href="/contacts/create"> Create Contact</a></span>
                </div>

                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @foreach ($contacts as $contact)
                                <tr>
                                    <td> {{ $contact->name }} </td>
                                    <td> {{ $contact->address }} </td>
                                    <td> {{ $contact->phone }} </td>
                                    <td>
                                        <a href=" {{route('contact.edit',[$contact->id])}} "><button class="btn btn-success">Edit</button></a>
                                        <a href=" {{route('contact.show',[$contact->id])}} "><button class="btn btn-primary">View</button></a>
                                        <form action="{{route('contact.destroy',[$contact->id])}}" method="POST" class="d-inline">
                                        @csrf
                                            <button class="btn btn-danger">Delete</button></form>
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
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
