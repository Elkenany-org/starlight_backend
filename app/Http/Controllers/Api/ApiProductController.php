<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;

class ApiProductController extends Controller
{
    
    public function index(Request $request)
    {
        $products = Product::filter($request->all())->orderBy('is_featured', 'desc')->latest()->get();
        return $this->returnJSON(ProductResource::collection($products));
    }
    
    public function show($id)
    {
        $product = Product::where('id' , $id)->first();
        return $this->returnJSON(new ProductResource($product));
    }

}
