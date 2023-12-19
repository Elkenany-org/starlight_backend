@extends('layouts.app')


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
                        <br><br>
                        <div class="col-12 d-flex justify-content-center align-items-center">
                            <h1 class="font-weight-bold" style="color: #0d6efd;">Information</h1>
                        </div>
                        <br><br>

                        <div class="d-inline-block input-style-1">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" value="{{$category->name}}">
                        </div>

                        <br>

                        <div class="d-inline-block input-style-1">
                            <input type="file" class="main_image" name="image" data-default-file="{{$category->image_url}}" data-height="200" accept="image/*" />
                        </div>

                        <div class="d-inline-block input-style-1">
                            <label for="social_alt_text" dir="ltr">alt_text</label>
                            <input type="text" class="form-control" name="alt_text" required oninput="countCharacters(this,6)" value="{{ $category->getAlt() }}">
                            <div dir="ltr"><span id="6"></span></div>
                        </div>
                    </div>

                    <br><br>
                    <div class="col-12 d-flex justify-content-center align-items-center">
                        <h1 class="font-weight-bold" style="color: #0d6efd;">Social Media Data</h1>
                    </div>
                    <br><br>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="focus_word" dir="ltr">Focus_keyword</label>
                            <input type="text" class="form-control" name="focus_keyword" oninput="countCharacters(this,4)" value="{{$category->seo->focus_keyword}}">
                            <div><span id="4"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_title" dir="ltr">Social_title</label>
                            <input type="text" class="form-control" name="title_social" value="{{ $category->seo->title_social }}" oninput="countCharacters(this,15)">
                            <div dir="ltr"><span id="15"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_description" dir="ltr">Social_description</label>
                            <textarea type="text" class="form-control" rows="3" name="description_social" oninput="countCharacters(this,5)">{{ $category->seo->description_social }}</textarea>
                            <div dir="ltr"><span id="5"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_image" dir="ltr">Social_image</label>
                            <input name="social_image" type="file" class="social_image" data-default-file="{{$category->seo->getImage()}}" data-height="200" accept="image/*" />
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="social_alt_text" dir="ltr">Social_alt_text</label>
                            <input type="text" class="form-control" name="social_alt_text" value="{{ $category->seo->getAlt() }}" oninput="countCharacters(this,6)">
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
                            <input type="text" class="form-control" name="title" required value="{{ $category->seo->title }}" oninput="countCharacters(this,7)">
                            <div dir="ltr"><span id="7"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="meta_link" dir="ltr">Meta_link</label>
                            <input type="text" class="form-control" dir="ltr" required value="{{ $category->seo->link }}" name="link" oninput="countCharacters(this,8)">
                            <div><span id="8"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="Meta_decription" dir="ltr">Meta_description</label>
                            <textarea type="text" class="form-control" rows="3" required name="description" oninput="countCharacters(this,9)">{{ $category->seo->description }}</textarea>
                            <div dir="ltr"><span id="9"></span></div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="button-group d-flex justify-content-center flex-wrap">
                            <input class="main-btn primary-btn btn-hover w-25 text-center spinner-btn" type="submit" value="Update">
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
    $('.social_image').dropify();

    function countCharacters(inputField, id) {
        var charCountElement = document.getElementById(id);
        charCountElement.innerText = inputField.value.length;
    }
</script>
@endpush
