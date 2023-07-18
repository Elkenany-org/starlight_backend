@extends('layouts.app')

@section('content')

<div class="p-3">
  <div class="three mb-3 d-flex justify-content-between align-items-center">
    <h1 class="d-inline-block w-25 ">ارشيف الطلبات</h1>

    {{-- <form class="d-f justify-content-center align-items-center" id="search-form" action="{{route('orders.archive_search')}}" method="get">
      <label>الاسم الاول</label>
      <input class="mySearch w-25" type="text" name="first_name" id="search-input">
      <label>اسم الشركة</label>
      <input class="mySearch w-25" type="text" name="company_name" id="search-input">
      <button class="btn btn-outline-secondary py-1" style="border-radius: 12px"  type="submit"><b>بحث</b></button>
    </form> --}}

    <a type="button" class="btn btn-secondary py-2" href="{{ route('orders.index') }}">الطلبات</a>
  </div>
  @if ($all_orders->count() > 0)
  <table class="table" id="table">
        <thead style="border-bottom: #2f80ed 3px solid">
          <tr style="color: #2f80ed">
            <th scope="col" style="width:5rem">#</th>
            <th style="width: 7rem" scope="col">الاسم الاول</th>
            <th scope="col">الاسم</th>
            <th scope="col">المدينة</th>
            <th scope="col">المنتج</th>
            <th scope="col">تاريخ الحذف</th>
            <th scope="col">الخيارات</th>
          </tr>
        </thead>
        <tbody id="tbody">
            @php
                $counter =1;
            @endphp
          @foreach ($all_orders as $order)
          <tr class="search2" style="border-bottom: 1px double #5d657b">
            <th scope="row" style="color: #2f80ed">{{$counter++}}</th>
            <td style="max-width: 30px;word-wrap: break-word;padding-left: 40px;"><p class=" title" style=" overflow-wrap: break-word">{{$order->name}}</p></td>
            <td style="max-width: 30px;word-wrap: break-word;padding-left: 40px;"><p class=" title" style=" overflow-wrap: break-word">{{$order->city}}</p></td>
            <td style="max-width: 30px;word-wrap: break-word;padding-left: 40px;"><p class=" title" style=" overflow-wrap: break-word">{{$order->commodity}}</p></td>
            <td ><p class=" title" style=" overflow-wrap: break-word;max-width: 85px;">{{$order->created_at}}</p></td>
            <td ><p class=" title" style=" overflow-wrap: break-word;max-width: 85px;">{{$order->deleted_at}}</p></td>
            <td>
              <a class="btn btn-secondary ms-1 py-1" href="{{ route('orders.restore', $order->id) }}">استرجاع</a>  
              <a class="btn btn-danger ms-1 py-1" href="{{ route('orders.hard_delete', $order->id) }}">حذف نهائي</a> 
            </td>
            @if ($order->read == 0)
              <td><i class="fa-solid fa-circle" style="color: #0d6efd;"></i></td>  
            @endif
          </tr>
              
          @endforeach
        </tbody>
  </table>  
  <div class="pagination justify-content-center">
    {{$all_orders->links()}}
  </div>
  @else
  <div class="alert alert-danger fw-bold" role="alert">لا يوجد شكاوي</div>
  @endif
  
</div>

</div>
@endsection
 
