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
                <td><img src="{{$product->images_url[0]}}" alt="error" style="width: 60px"></td>
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
