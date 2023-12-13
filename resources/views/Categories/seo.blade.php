@extends('layouts.app')


@section('content')

<div class="card-styles">
    <br>
    <div class="col-12 d-flex justify-content-center align-items-center">
        <h1 class="font-weight-bold" style="color: #0d6efd;">Seo {{$category->name}} Category</h1>
    </div>
    <br>

    <form action="{{route('category.seo',$category->id)}}" method="POST" enctype="multipart/form-data">

        @csrf

        <div class="card-styles">
            <div class="card-style-3 mb-30">
                <div class="card-content">

                    <br><br>
                        <div class="col-12 d-flex justify-content-center align-items-center">
                            <h1 class="font-weight-bold" style="color: #0d6efd;">Social Media Data</h1>
                        </div>
                    <br><br>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_title" dir="ltr">Social_title</label>
                            <input type="text" class="form-control" name="social_title" value="{{$category->social_title}}" oninput="countCharacters(this,15)">
                            <div dir="ltr"><span id="15"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_description" dir="ltr">Social_description</label>
                            <textarea type="text" class="form-control" rows="3" name="social_description" oninput="countCharacters(this,5)">{{$category->social_description}}</textarea>
                            <div dir="ltr"><span id="5"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_image" dir="ltr">Social_image</label>
                            @if ($category->social_image != null)
                                <img src="{{url('/').'/'.$category->social_image}}" alt="error" style="width: 200px">
                            @endif
                            <input type="file" class="file" name="social_image">
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_alt_text" dir="ltr">Social_alt_text</label>
                            <input type="text" class="form-control" name="social_alt_text" value="{{$category->social_alt_text}}" oninput="countCharacters(this,6)">
                            <div dir="ltr"><span id="6"></span></div>
                        </div>
                    </div>

                    <br><br>
                    <div class="col-12 d-flex justify-content-center align-items-center">
                        <h1 class="font-weight-bold" style="color: #0d6efd;">Meta Data</h1>
                    </div>
                    <br><br>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="meta_title" dir="ltr">Title_tag</label>
                            <input type="text" class="form-control" name="meta_title" value="{{$category->meta_title}}" oninput="countCharacters(this,7)">
                            <div dir="ltr"><span id="7"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="meta_link" dir="ltr">Meta_link</label>
                            <input type="text" class="form-control" dir="ltr" name="meta_link" value="{{$category->meta_link}}" oninput="countCharacters(this,8)">
                            <div><span id="8"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="Meta_decription" dir="ltr">Meta_description</label>
                            <textarea type="text" class="form-control" rows="3" name="meta_description" oninput="countCharacters(this,9)">{{$category->meta_description}}</textarea>
                            <div dir="ltr"><span id="9"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="button-group d-flex justify-content-center flex-wrap">
                            <input class="main-btn primary-btn btn-hover w-25 text-center" type="submit" value="Save">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>

</div>
@endsection
