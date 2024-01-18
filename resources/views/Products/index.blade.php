@extends('layouts.app')

@section('content')

<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<div class="p-3">
    <div class="three mb-3 d-flex justify-content-between align-items-center">
        <h1 class="d-inline-block " style="width: 100px">Products</h1>

        <input type="text" class="mySearch" style="width:10rem;" onkeyup="liveSearch(this)" placeholder="search">

        <a type="button" class="btn btn-secondary py-2" href="{{ route('Products.archive') }}">Archive</a>
    </div>
    <div class="table-cont">
        @if ($products->count() > 0)
        <table class="table" id="table">
            <thead id="thead" style="border-bottom: #2f80ed 3px solid">
                <tr style="color: #2f80ed">
                    <th scope="col" class="pe-4">#</th>
                    <th scope="col">Image</th>
                    <th scope="col">Title</th>
                    <th scope="col">Category</th>
                    <th scope="col">Publish date</th>
                    <th scope="col">Modification date</th>
                    <th scope="col">Properties</th>
                </tr>
            </thead>
            <tbody id="tbody">
                @php
                $counter =1;
                @endphp
                @foreach($products as $product)
                <tr style="border-bottom: 1px double #5d657b">
                    <th scope="row" style="color: #2f80ed">{{$counter++}}</th>
                    <td>
                        @if(count($product->images_url))
                            <img src="{{$product->images_url[0]}}" alt="error" style="width: 60px">
                        @else
                            -
                        @endif
                    </td>
                    <td>{{$product->title}}</td>
                    <td>{{$product->category->name}}</td>
                    <td>{{($product->created_at)->format('d/m/Y h:i:s')}}</td>
                    <td>{{($product->updated_at)->format('d/m/Y h:i:s')}}</td>
                    <td>
                        @can('products.edit')
                        <a class="btn btn-secondary ms-1 py-1" href="{{ route('Products.edit', $product->id) }}">Edit</a>
                        @endcan

                        @can('products.delete')
                        <a class="btn btn-danger ms-1 py-1" href="{{ route('Products.soft_delete', $product->id) }}">Delete</a>
                        @endcan
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="pagination justify-content-center">
            {{$products->links()}}
        </div>
        @else
        <div class="alert alert-danger fw-bold" role="alert">No Products are exist!</div>
        @endif
    </div>
</div>

</div>
@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
    function liveSearch(input) {

        var input = input.value;

        $.ajax({
            url: "{{ route('Products.search') }}"
            , method: "GET"
            , data: {
                column: input
                , _token: "{{ csrf_token() }}"
            }
            , success: function(response) {
                let products = response.products;
                var content;
                for (var i = 0; i < products.length; i++) {
                    var row = `<tr style="border-bottom: 1px double #5d657b">
                                <th scope="row" style="color: #2f80ed">${i+1}</th>
                                <td><img src="${products[i].images_url[0]}" alt="error" style="width: 60px"></td>
                                <td>${products[i].title}</td>
                                <td style="padding-left:30px;padding-right:30px; max-width:20px;">${products[i].shortdescription}</td>
                                <td>
                                    <a class="btn btn-secondary ms-1 py-1" href="/products/edit/${products[i].id}">Edit</a> 
                                    <a class="btn btn-danger ms-1 py-1" href="/products/destroy/${products[i].id}">Delete</a>  
                                </td>
                            </tr>
                                `
                }

                content += row;
                $('#tbody').html(content);
                header = `<tr style="color: #2f80ed">
                                <th scope="col" style="width: 5rem;">#</th>
                                <th scope="col" style="width: 8rem;">Image</th>
                                <th scope="col">Title</th>
                                <th scope="col" style="padding-left:30px;">Description</th>
                                <th scope="col">Properties</th>
                                <tr>
                                `
                $('#thead').html(header);
            }
            , error: function(xhr) {
                $('#result').html('An error occurred.');
            }
        });
    }

</script>
