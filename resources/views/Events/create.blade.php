@extends('layouts.app')

@section('content')

<div class="card-styles">
  <br>           
    <div class="col-12 d-flex justify-content-center align-items-center">
      <h1 class="font-weight-bold" style="color: #0d6efd;">Add Event</h1>
    </div>
  <br>
  @if($errors->any())
    <div class="alert alert-danger fw-bold" role="alert">
        <h4>{{$errors->first()}}</h4>
    </div>
  @endif
  <div class="card-style-3 mb-30">
      <div class="card-content">            
          <div class="row">
            <form action="{{route('Events.store')}}" method="POST" enctype="multipart/form-data">
              @csrf

              <div class="col-12">
                <div class="input-style-1">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" id="titleInput" oninput="countCharacters(this,1)"
                        value="{{old('title')}}">
                    <div><span id="1"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                    <label>Slug</label>
                    <input type="text" class="form-control" name="slug" id="slugInput" oninput="countCharacters(this,1)"
                        value="{{old('slug')}}">
                    <div><span id="1"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                    <label>Short Description</label>
                    <textarea name="shortdescription" rows="3" oninput="countCharacters(this,2)">{{old('shortdescription')}}</textarea>
                    <div><span id="2"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Description</label>
                  <textarea name="description" id="editor" class="full-editor">{!! old('description') !!}</textarea>
                  <div><span id="3"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Image</label>
                  <input type="file" class="file" id="file" name="image">
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Alt text</label>
                  <input type="text" class="form-control" name="alt_text" oninput="countCharacters(this,4)" value="{{old('alt_text')}}">
                  <div dir="ltr"><span id="4"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Focus_keyword</label>
                  <input type="text" class="form-control" name="focus_keyword" oninput="countCharacters(this,44)" value="{{old('focus_keyword')}}">
                  <div><span id="44"></span></div>
                </div>
              </div>
              
              <br><br>              
                <div class="col-12 d-flex justify-content-center align-items-center">
                  <h1 class="font-weight-bold" style="color: #0d6efd;">Social Media Data</h1>
                </div>
              <br><br>

              <div class="col-12">  
                <div class="input-style-1">
                  <label>Social title</label>
                  <input type="text" class="form-control" name="social_title" oninput="countCharacters(this,5)"
                  value="{{old('social_title')}}">
                  <div><span id="5"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social description</label>
                  <textarea type="text" class="form-control" rows="3" name="social_description" oninput="countCharacters(this,6)">
                  {{old('social_description')}}</textarea>
                  <div><span id="6"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social image</label>
                  <input type="file" class="file" dir="ltr" name="social_image" oninput="countCharacters(this,7)">
                  <div><span id="7"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social alt_text</label>
                  <input type="text" class="form-control" name="social_alt_text" oninput="countCharacters(this,8)"
                  value="{{old('social_alt_text')}}">
                  <div><span id="8"></span></div>
                </div>
              </div>
              
              <br><br>              
              <div class="col-12 d-flex justify-content-center align-items-center">
                <h1 class="font-weight-bold" style="color: #0d6efd;">Meta Data</h1>
              </div>
              <br><br>
              <div class="col-12">
                <div class="input-style-1">
                  <label>Title tag</label>
                  <input type="text" class="form-control" name="meta_title" oninput="countCharacters(this,9)"
                  value="{{old('meta_title')}}">
                  <div><span id="9"></span></div>
                </div>
              </div>
              <div class="col-12">
                <div class="input-style-1">
                  <label>Meta link</label>
                  <input type="text" class="form-control" name="meta_link" oninput="countCharacters(this,10)"
                  value="{{old('meta_link')}}">
                  <div><span id="10"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Meta decription</label>
                  <textarea type="text" class="form-control" rows="3" name="meta_description" oninput="countCharacters(this,11)">
                  {{old('meta_description')}}</textarea>
                  <div><span id="11"></span></div>
                </div>
              </div>

              <div class="col-12">
                  <div class="button-group d-flex justify-content-center flex-wrap">
                    <input class="main-btn primary-btn btn-hover w-25 text-center spinner-btn" type="submit" value="Add">
                  </div>
              </div>
              </div>
            </form> 
      </div>
  </div>
</div>

</div>

@endsection

@push('js')

    <script>
     
      function generateSlug() {
        const inputValue = document.getElementById('titleInput').value;
        // Convert the value to lowercase and replace spaces with hyphens
        const slugValue = inputValue.toLowerCase().replace(/\s+/g, '-');
        // Set the slug value to the slug input field
        document.getElementById('slugInput').value = slugValue;
      }

      // Attach the function to the input field's change event
      document.getElementById('titleInput').addEventListener('input', generateSlug);
    
      function countCharacters(inputField , id) {
        var charCountElement = document.getElementById(id);
        charCountElement.innerText = inputField.value.length;
      }

    </script>
        
@endpush

    
  