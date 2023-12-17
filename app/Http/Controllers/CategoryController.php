<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryStoreRequest;
use App\Http\Requests\CategoryUpdateRequest;
use App\Models\Category;
use App\Models\Meta_data_pages;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class CategoryController extends Controller
{
    
    public function index(Request $request)
    {
        $categories = Category::filter($request->all())->latest()->paginate(10);
        return view('Categories.index')->with('categories',$categories);
    }
    
    public function create()
    {
        return view('Categories.create');
    }

    public function store(CategoryStoreRequest $request)
    {
        $category = Category::create(Arr::only($request->all() ,['name']));
        $category->storeFile($request->image , $request->alt_text);
        
        //handle store meta tag for this category
        $meta = Meta_data_pages::create(
            Arr::except($request->all() ,['name' , 'image' , 'social_image' , 'social_alt_text' , 'alt_text'])
            + ['model_type' => Category::class , 'model_id' => $category->id] 
            );
        $meta->storeFile($request->social_image , $request->social_alt_text);
        return redirect()->route('category.index');
    }

    public function edit($id)
    {
        $category = Category::where('id',$id)->first();
        Meta_data_pages::firstOrCreate(['model_type' => Category::class , 'model_id' => $category->id ] ,['model_type' => Category::class , 'model_id' => $category->id ]);
        return view('Categories.edit')->with('category' , $category);
    }

    public function update(CategoryUpdateRequest $request, Category $category)
    {
        if(isset($request->image)){
            $category->updateFile($request->image ,  $request->alt_text);
        }
        $category->update(Arr::only($request->all() ,['name']));
        
        //handle update meta tag for this category
        $category->seo()->update(Arr::except($request->all() ,['_token','name' , 'image' , 'social_image' , 'social_alt_text' ,  'alt_text']));
        if(isset($request->social_image)){
            $category->seo->updateFile($request->social_image , $request->social_alt_text);
        }
        return redirect()->route('category.index'); 
    }
    
    public function delete($id)
    {
        $category = Category::find($id);
        $category->deleteFiles('categories');  
        $category->delete();
        return redirect()->route('category.index');
    }
    
}
