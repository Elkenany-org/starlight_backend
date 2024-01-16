<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Models\Meta_data_pages;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class ContentController extends Controller
{
    
    public function __construct()
    {
        // $this->middleware('permission:categories.read', ['only' => ['index']]);
        // $this->middleware('permission:categories.create', ['only' => ['create', 'store']]);
        $this->middleware('permission:main_pages.edit', ['only' => ['content', 'update' , 'contentSeo' , 'updateSeo']]);
        $this->middleware('permission:main_pages.seo', ['only' => ['contentSeo' , 'updateSeo']]);
        // $this->middleware('permission:categories.delete', ['only' => ['delete']]);
    }

    public function content(Request $request)
    {
        $content = Content::where([['page_name',$request->page_name],['type',$request->type]])->first();
        return view('Content.content')->with('content',$content);
    }
    
    public function update(Request $request)
    {
        $content = Content::where([['page_name',$request->page_name],['type',$request->type]])->first();
        
        $request->validate([
            'description' => 'required',
            'title'       => 'nullable'
        ]);
        
        if($request->image != null)
        {
            $image_path = public_path($content->image);
            if(File::exists($image_path))
                unlink($image_path);

            $image_name = time().'image.jpg';
            $path = 'images/content';
            $request->image->move($path , $image_name);
            
            $content->image = $path.'/'.$image_name;
        }
        
        $content->description  =  $request->description;
        $content->title        =  $request->title;
        $content->save();

        Session()->flash('success', 'Content Updated Successfully'); 
        return redirect()->route('home');
    }

    public function contentSeo($type)
    {
        $meta = Meta_data_pages::where('page_name' , $type)->first();
        return view('Content.seo' , get_defined_vars());
    }

    public function updateSeo(Request $request)
    {
        $page = Meta_data_pages::where('page_name' , $request->page)->first();
        
        $page->update(Arr::except($request->all() ,['_token','social_image' , 'social_alt_text' , 'page']));
        if(isset($request->social_image)){
            $page->updateFile($request->social_image , $request->social_alt_text);
        }

        Session()->flash('success', 'Seo Updated Successfully'); 
        return redirect()->back();
    }
    
}
