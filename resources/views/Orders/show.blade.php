@extends('layouts.app')

@section('content')

<div class="title-wrapper pt-30">
    <div class="row align-items-center">
        <div class="col-md-6">
            <div class="title mb-30">
                <h2>Order</h2>
            </div>
        </div>
    </div>
</div>
<div class="card-styles">
    <div class="card-style-3 mb-30">
        <div class="card-content">            
            <div class="row">
                <div class="col-12 d-flex align-items-center ">

                    <div class="d-inline-block input-style-1">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" name="email"
                            style=" margin-left: 70px;" id="name" placeholder="{{$order->email}}"
                            readonly>
                    </div>
                    <div class="d-inline-block input-style-1">
                        <label for="product" style=" margin-right: 70px;">Product</label>
                        <input type="text" class="form-control" name="product"
                            style=" margin-right: 70px;" id="name" placeholder="{{$order->product}}"
                            readonly>
                    </div>
                </div>
               
                <div class="col-12">
                    <div class="input-style-1">
                    <label for="message">Message</label>
                    <textarea type="text" class="form-control" name="message" rows="5" readonly>
                            {{$order->message}}
                    </textarea>
                    </div>
                </div>
                
                <div class="col-12">
                    <div class="button-group d-flex justify-content-center flex-wrap">
                        <a href="{{ route('orders.soft_delete', $order->id) }}" class="main-btn danger-btn btn-hover w-25 text-center">
                            Delete
                        </a>
                    </div>
                </div>
            </div>
        
        </div>
    </div>
</div>
@endsection
