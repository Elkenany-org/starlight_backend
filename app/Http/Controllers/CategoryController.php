<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryStoreRequest;
use App\Http\Requests\CategoryUpdateRequest;
use App\Models\Category;
use App\Models\Meta_data_pages;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;


class CategoryController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:categories.read', ['only' => ['index']]);
        $this->middleware('permission:categories.create', ['only' => ['create', 'store']]);
        $this->middleware('permission:categories.edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:categories.delete', ['only' => ['delete']]);
    }
    
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
        $category = Category::create(Arr::only($request->all() ,['name','slug']));
        $category->storeFile($request->image , $request->alt_text);
        
        //handle store meta tag for this category
        $meta = Meta_data_pages::create(
            Arr::except($request->all() ,['name' , 'slug' ,'image' , 'social_image' , 'social_alt_text' , 'alt_text'])
            + ['model_type' => Category::class , 'model_id' => $category->id] 
            );
        $meta->storeFile($request->social_image , $request->social_alt_text);

        Session()->flash('success', 'Category Added Successfully'); 
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
        $category->update(Arr::only($request->all() ,['name','slug']));
        
        //handle update meta tag for this category
        $category->seo()->update(Arr::except($request->all() ,['_token','name' , 'slug' , 'image' , 'social_image' , 'social_alt_text' ,  'alt_text']));
        if(isset($request->social_image)){
            $category->seo->updateFile($request->social_image , $request->social_alt_text);
        }

        Session()->flash('success', 'Category Updated Successfully'); 
        return redirect()->route('category.index'); 
    }
    
    public function delete($id)
    {
        $category = Category::find($id);
        $category->deleteFiles('categories');  
        $category->delete();
        Session()->flash('success', 'Category Deleted Successfully'); 
        return redirect()->route('category.index');
    }
    
}
