
@extends('layouts.app')

@section('content')

<div class="card-styles">
  <br>           
    <div class="col-12 d-flex justify-content-center align-items-center">
      <h1 class="font-weight-bold" style="color: #0d6efd;">Edit Role</h1>
    </div>
  <br>
 
  <div class="card-style-3 mb-30">
      <div class="card-content">            
          <div class="row">
            <form action="{{route('roles.update', $role->id)}}" method="POST" enctype="multipart/form-data">
              @csrf

              <div class="col-12">
                <div class="input-style-1">
                  <label>Role Name</label>
                    <input type="text" class="form-control" required name="name"value="{{ old('name' , $role->name)}}">
                    @error('name')
                        <span class="text-danger"> {{ $message }} </span>
                    @enderror
                </div>
              </div>

              <div class="row">
                @foreach( $permissions as $key => $permission)
                    <div class="col-4 mb-3"> 
                        <h4> {{$key}} </h2>  
                        @foreach($permission as $value) 
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox"  id="{{ $value['id'] }}"
                                 name="permissions[{{ $value['id'] }}]" 
                                 value="{{ $value['full_name'] }}" 
                                 @if(is_array(old('permissions')) && in_array($value['id'] , old('permissions'))) checked @endif
                                 {{  in_array($value['id']  , $selectedPermissions) ? 'checked' : '' }}>
                                <label class="form-check-label" for="{{ $value['id'] }}">
                                    {{ $value['name'] }}
                                </label>
                            </div>
                        @endforeach
                    </div>
                @endforeach
              </div>
    
              <div class="col-12">
                  <div class="button-group d-flex justify-content-center flex-wrap">
                    <input class="main-btn primary-btn btn-hover w-25 text-center" type="submit" value="Add">
                  </div>
              </div>
              </div>
            </form> 
      </div>
  </div>
</div>
</div>

@endsection

    
  