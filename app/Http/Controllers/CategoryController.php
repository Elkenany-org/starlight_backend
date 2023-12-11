<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryStoreRequest;
use App\Http\Requests\CategoryUpdateRequest;
use App\Models\Category;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class CategoryController extends Controller
{
    
    public function index()
    {
        $categories = Category::latest()->paginate(10);
        return view('Categories.index')->with('categories',$categories);
    }
    
    public function create()
    {
        return view('Categories.create');
    }

    public function store(CategoryStoreRequest $request)
    {
        $category = Category::create(Arr::only($request->all() ,['name']));
        $category->storeFile($request->image);
        return redirect()->route('category.index');
    }

    public function edit($id)
    {
        $category = Category::where('id',$id)->first();
        return view('Categories.edit')->with('category' , $category);
    }

    public function update(CategoryUpdateRequest $request, $id)
    {
        $category = Category::find($id);
        if(isset($request->image)){
            $category->updateFile($request->image);
        }
        $category->update(Arr::only($request->all() ,['name']));

        // $category->name = $request->name;
        // if($request->image != null)
        // {
        //     $image_path = public_path($category->image);
        //     if(File::exists($image_path))
        //     unlink($image_path);
        
        //     $image_name = $request->image->getClientOriginalName();
        //     $image_name = time().$image_name;
        //     $path = 'images/main/categories';
        //     $request->image->move($path , $image_name);
            
        //     $category->image = $path.'/'.$image_name;
        // }
        // $category->save();
    
        return redirect()->route('category.index'); 
    }
    
    public function delete($id)
    {
        // $image_path = public_path($category->image);
        // if(File::exists($image_path))
        //     unlink($image_path);  
        $category = Category::find($id);
        $category->deleteFiles('categories');  
        $category->delete();
        return redirect()->route('category.index');
    }

    public function search(Request $request)
    {
        $name = $request->name;
        $categories = Category::where('name', 'LIKE', '%'.$name.'%')
            ->paginate(10);
        return view('Categories.index')->with('categories',$categories);
    }
    
}
