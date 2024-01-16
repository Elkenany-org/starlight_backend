<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\EventResource;
use App\Http\Resources\ProductResource;
use App\Models\Category;
use App\Models\Content;
use App\Models\Event;
use App\Models\Info;
use App\Models\Meta_data_pages;
use App\Models\Product;
use Illuminate\Http\Request;

class ApiContentController extends Controller
{
    
    public function home()
    {
        $contents = Content::where([['page_name','home']])->get();
        $categories = Category::all();
        $categories_products = Category::with('products')->inRandomOrder()->get();
        $events = Event::select('id','title','shortdescription','image','created_at')->inRandomOrder()->limit(2)->get();
        $data = array();
        
        foreach($contents as $content)
        {
            $data[$content->type] = ['image' => $content->image_link ,'desc' => $content->description , 'title' => $content->title];
        }

        foreach($categories as $category)
        {
            $data['categories'][] = [
                'id'     => $category->id,
                'name'   => $category->name ,
                'slug'   => $category->getSlug(),
                'images' => [$category->getImageObject()],
            ];
        }
        
        foreach($categories_products as $category)
        {
            $data['categories_products'][] = [
                'id'        => $category->id,
                'name'      => $category->name ,
                'slug'      => $category->getSlug() ,
                'images'    => [$category->getImageObject()],
                'products'  => ProductResource::collection($category->products->take(4)), 
            ];
            // $products = Product::where('category_id',$category->id)->select('id','title','shortdescription','images')->limit(4)->get();
            // $data['categories_products']['products'][] = $category->products;
        }
        
        $data['events']    = EventResource::collection($events);
        $data['meta_tags'] = $this->getMetaTags('home');

        return $this->returnJSON($data); 
    }
    
    public function aboutus()
    {
        $contents = Content::where([['page_name','aboutus']])->get();
        $all_info = Info::all();
        $data = array();

        foreach($contents as $content)
        {
            $data[$content->type] = ['image' => $content->image_link ,'desc' => $content->description];
        }

        foreach($all_info as $info)
        {
            $data['info'][$info->type] =  $info->description;
        }
        $data['meta_tags'] = $this->getMetaTags('about');
        
         return $this->returnJSON($data); 
    }

    public function products()
    {
        $data['meta_tags'] = $this->getMetaTags('products');
        return $this->returnJSON($data); 
    }

    public function events()
    {
        $data['meta_tags'] = $this->getMetaTags('events');
        return $this->returnJSON($data); 
    }

    public function contact()
    {
        $data['meta_tags'] = $this->getMetaTags('contact');
        return $this->returnJSON($data); 
    }
    
    public function getMetaTags($page)
    {
        $metaTags = Meta_data_pages::where('is_page' , 1)->where('page_name' , $page)->first();    
        return [
            'title'              => $metaTags->title,
            'url'                => url(str_replace(' ' , '-' , $metaTags->title)), 
            'meta_link'          => $metaTags->link,
            'meta_description'   => $metaTags->description,
            'focus_keyword'      => $metaTags->focus_keyword,
            'social_title'       => $metaTags->title_social,
            'social_description' => $metaTags->description_social,
            'social_image'       => $metaTags->getImage(),
            'social_alt_image'   => $metaTags->getAlt(),
        ];   
    }
    
}
