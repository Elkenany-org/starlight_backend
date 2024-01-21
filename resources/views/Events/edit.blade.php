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
              <form action="{{route('Events.update',$event->id)}}" method="POST" enctype="multipart/form-data">
              @csrf

              <div class="col-12">
                <div class="input-style-1">
                  <label>Title</label>
                  <input type="text" class="form-control" name="title" id="titleInput " value="{{$event->title}}" oninput="countCharacters(this,1)">
                  <div><span id="1"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Slug</label>
                  <input type="text" class="form-control" name="slug" id="slugInput" value="{{$event->getSlug()}}" oninput="countCharacters(this,11)">
                  <div><span id="11"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Short Description</label>
                  <textarea name="shortdescription" rows="3" oninput="countCharacters(this,2)">{{$event->shortdescription}}</textarea>
                  <div><span id="2"></span></div>
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Description</label>
                  <textarea name="description" id="en" class="full-editor">{!! $event->description !!}</textarea>
                  <div><span id="3"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <img src="{{$event->image_link}}" alt="error" style="width: 200px">
                  <label>Image</label>
                  <input type="file" class="file" id="file" name="image">
                </div>
              </div>
              
              <div class="col-12">
                <div class="input-style-1">
                  <label>Alt text</label>
                  <input type="text" class="form-control" name="alt_text" value="{{$event->alt_text}}" oninput="countCharacters(this,33)">
                  <div><span id="33"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Focus_keyword</label>
                  <input type="text" class="form-control" name="focus_keyword" value="{{$event->focus_keyword}}" oninput="countCharacters(this,4)">
                  <div dir="ltr"><span id="4"></span></div>
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
                  <input type="text" class="form-control" name="social_title" value="{{$event->social_title}}" oninput="countCharacters(this,15)">
                  <div><span id="15"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social description</label>
                  <textarea type="text" class="form-control" rows="3" name="social_description" oninput="countCharacters(this,5)">{{$event->social_description}}</textarea>
                  <div><span id="5"></span></div>
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social image</label>
                  @if ($event->social_image != null)
                    <img src="/images/social/events/{{$event->social_image}}" alt="error" style="width: 200px">  
                  @endif
                  <input type="file" class="file" name="social_image">
                </div>
              </div>

              <div class="col-12">
                <div class="input-style-1">
                  <label>Social_alt_text</label>
                  <input type="text" class="form-control" name="social_alt_text" value="{{$event->social_alt_text}}" oninput="countCharacters(this,6)">
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
                  <label>Title_tag</label>
                  <input type="text" class="form-control" name="meta_title" value="{{$event->meta_title}}" oninput="countCharacters(this,7)">
                  <div dir="ltr"><span id="7"></span></div>
                </div>
              </div>

              {{-- <div class="col-12">
                <div class="input-style-1">
                  <label for="meta_link" dir="ltr">Meta_link</label>
                  <input type="text" class="form-control" dir="ltr" name="meta_link" value="{{$event->meta_link}}" oninput="countCharacters(this,8)">
                  <div><span id="8"></span></div>
                </div>
              </div> --}}
              
              <div class="col-12">
                <div class="input-style-1">
                  <label for="Meta_decription" dir="ltr">Meta_description</label>
                  <textarea type="text" class="form-control" rows="3" name="meta_description" oninput="countCharacters(this,9)">{{$event->meta_description}}</textarea>
                  <div dir="ltr"><span id="9"></span></div>
                </div>
              </div>

              <div class="col-12">
                  <div class="button-group d-flex justify-content-center flex-wrap">
                    <input class="main-btn primary-btn btn-hover w-25 text-center spinner-btn" type="submit" value="Update">
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

      // function generateSlug() {
      //   const inputValue = document.getElementById('titleInput').value;
      //   // Convert the value to lowercase and replace spaces with hyphens
      //   const slugValue = inputValue.toLowerCase().replace(/\s+/g, '-');
      //   // Set the slug value to the slug input field
      //   document.getElementById('slugInput').value = slugValue;
      // }

      // // Attach the function to the input field's change event
      // document.getElementById('titleInput').addEventListener('input', generateSlug);
    
      function countCharacters(inputField , id) {
        var charCountElement = document.getElementById(id);
        charCountElement.innerText = inputField.value.length;
      }

    </script>
        
@endpush

    
  