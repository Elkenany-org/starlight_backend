@extends('layouts.app')

@push('css')
    <style>
        .dropify-render img{
            max-height: 100%  !important;
            transform: translate(0, 0%) !important;
        }
    </style>
@endpush

@section('content')

<div class="card-styles">
  <br>           
    <div class="col-12 d-flex justify-content-center align-items-center">
      <h1 class="font-weight-bold" style="color: #0d6efd;">Edit Category</h1>
    </div>
  <br>
  @if($errors->any())
    <div class="alert alert-danger fw-bold" role="alert">
        <h4>{{$errors->first()}}</h4>
    </div>
  @endif

<form action="{{route('category.update',$category->id)}}" method="POST" enctype="multipart/form-data">
    @csrf
  
    <div class="card-styles">
        <div class="card-style-3 mb-30">
            <div class="card-content">            
                <div class="row">
                    <div class="d-inline-block input-style-1">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" value="{{$category->name}}">
                    </div>
                    <br>
                    <br>
                    <div class="d-inline-block input-style-1">
                        {{-- <img src="{{$category->image_url}}" alt="error" style="width: 200px">
                        <br>
                        <br>
                        <label for="image">Image</label>
                        <input type="file" class="file" name="image"> --}}
                        <input type="file" class="main_image" name="image" data-default-file="{{$category->image_url}}" data-height="200" accept="image/*" />
                    </div>
                        
                    </div>
                    <div class="col-12">
                        <div class="button-group d-flex justify-content-center flex-wrap">
                          <input class="main-btn primary-btn btn-hover w-25 text-center" type="submit" value="Update">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form> 
        
</div>                      
@endsection

@push('js')
    <script>
        $('.main_image').dropify();
    </script>
@endpush