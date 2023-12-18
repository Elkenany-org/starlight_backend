@extends('layouts.app')

@section('content')

<div class="p-3">
  <div class="three mb-3 d-flex justify-content-between align-items-center">
    <h1 class="d-inline-block w-25 ">Messages</h1>

    {{-- <form class="d-f justify-content-center align-items-center" id="search-form" action="{{route('contactus.search')}}" method="get">
      <label>الاسم الاول</label>
      <input class="mySearch w-25" type="text" name="first_name" id="search-input">
      <label>اسم الشركة</label>
      <input class="mySearch w-25" type="text" name="company_name" id="search-input">
      <button class="btn btn-outline-secondary py-1" style="border-radius: 12px"  type="submit"><b>بحث</b></button>
    </form> --}}
    {{-- @csrf
    <input type="text" id="myInput" onkeyup="contactus_search()"> --}}
    {{-- <form>
      @csrf
      <input type="text" id="myInput" onkeyup="contactus_search()">
    </form> --}}
    
    <a type="button" class="btn btn-secondary py-2" href="{{ route('contactus.archive') }}">Archive</a>
  </div>
  @if ($all_messages->count() > 0)
    <table class="table" id="table">
        <thead style="border-bottom: #2f80ed 3px solid">
          <tr style="color: #2f80ed">
            <th scope="col" class="pe-5">#</th>
            <th scope="col">First name</th>
            <th scope="col">Last name</th>
            <th scope="col">Send date</th>
            <th scope="col">Properties</th>
          </tr>
        </thead>
        <tbody id="tbody">
          @php
              $counter =1;
          @endphp
          @foreach ($all_messages as $message)
            <tr class="search2 " style="border-bottom: 1px double #5d657b">
              <th scope="row" style="color: #2f80ed">{{$counter++}}</th>
              <td>{{$message->first_name}}</td>
              <td>{{$message->second_name}}</td>
              <td>{{$message->created_at}}</td>
              <td>
                @can('contact.show')
                  <a class="btn btn-secondary ms-1 py-1" href="{{ route('contactus.show', $message->id) }}">Show</a> 
                @endcan
                @can('contact.delete')
                  <a class="btn btn-danger ms-1 py-1" href="{{ route('contactus.soft_delete', $message->id) }}">Delete</a> 
                @endcan 
              </td>
              @if ($message->read == 0)
                <td><i class="fa-solid fa-circle" style="color: #0d6efd;"></i></td>  
              @endif
            </tr>
          @endforeach
        </tbody>
    </table>  
    <div class="pagination justify-content-center">
      {{$all_messages->links()}}
    </div>
    @else
    <div class="alert alert-danger fw-bold" role="alert">There aren't messages</div>
    @endif
    
  </div>
  
</div>
@endsection
