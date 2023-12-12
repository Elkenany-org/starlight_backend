<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;



class ApiCategoryController extends Controller
{
    public function index()
    {
        $categories = CategoryResource::collection(Category::all());
        return $this->returnJSON($categories);
    }

    public function show($id)
    {
        $category = new CategoryResource(Category::where('id' , $id)->first());
        return $this->returnJSON($category);
    }
}
