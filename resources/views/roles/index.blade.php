@extends('layouts.app')

@section('content')
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

    <!-- ========== title-wrapper start ========== -->
    <div class="title-wrapper pt-30">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="title mb-30">
                    <h2>{{ __('Roles') }}</h2>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- ========== title-wrapper end ========== -->

    <div class="card-styles">
        <div class="card-style-3 mb-30">
            <div class="card-content">

                <div class="table-wrapper table-responsive">
                    <table class="table striped-table">

                        <thead>
                            <tr>
                                <th class="pe-5"><h6>#</h6></th>
                                <th><h6>Name</h6></th>
                                <th><h6>CreatedAt</h6></th>
                                <th><h6>Action</h6></th>
                            </tr>
                            <!-- end table row-->
                        </thead>

                        <tbody>
                            @foreach($roles as $role)
                                <tr>
                                    <th>
                                        <p>{{ $loop->iteration }}</p>
                                    </th>
                                    <td>
                                        <p>{{ $role->name }}</p>
                                    </td>
                                    <td>
                                        <p>{{ $role->created_at }}</p>
                                    </td>
                                    <td>
                                        @can('roles.edit')
                                            <a class="btn btn-secondary ms-1 py-1" href="{{ route('roles.edit', $role->id) }}">Edit</a> 
                                        @endcan
                                        
                                        @can('roles.delete')
                                            <a class="btn btn-danger ms-1 py-1" href="{{ route('roles.delete', $role->id) }}">Delete</a>  
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                            <!-- end table row -->
                        </tbody>

                    </table>
                    
                    <!-- end table -->
                    {{ $roles->links() }}
                </div>
            </div>
        </div>
    </div>

@endsection


 

