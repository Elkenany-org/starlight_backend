<?php

namespace App\Models;

use App\ModelFilters\ProductFilter;
use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Product extends Model
{
    use SoftDeletes;
    use HasFactory;
    use Filterable;
    
    protected $hidden = ['images'];
    protected $appends = ['images_url'];
    protected $dates = ['deleted_at'];
    protected $fillable = ['title','images','category_id','shortdescription','description','alt_text','focus_keyword'
                ,'social_title','social_link','social_image','social_description','social_alt_text'
                ,'meta_title','meta_link','meta_description' , 'slug' , 'is_featured'];
                
    protected $casts = [
        'images' => 'array',
        'alt_text' => 'array'
    ];
  
    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }

    public function getImagesUrlAttribute()
    {
        $arr=[];
        foreach($this->images as $image)
        {
            array_push($arr , url('/').'/'.$image);
        }
        return $arr;
    }
    
    public function getImagesObjects()
    {
        $arr=[];
        foreach($this->images as $key => $image)
        {  
            $arr[] = [ 'url' => url('/').'/'.$image , 'alt' => $this-> $this->alt_text[$key] ?? 'star-light-photo' ];
        }
        return $arr;
    }

    public function getCategoryObject()
    {
        if($this->category){
            return [ 'id' => $this->category->id , 'name' => $this->category->name , 'slug' => $this->category->getSlug()];
        }
        return null;
    }

    public function seo()
    {
        return $this->morphOne(Meta_data_pages::class, 'model');
    }

    public function getSlug()
    {
        if($this->slug){
            return  str_replace(' ' , '-' , $this->slug);
        }
        return  str_replace(' ' , '-' , strtolower($this->title));
    }
    
    public function getMetaTags()
    {
        return [
            'title'              => $this->seo?->title              ?? $this->title ,
            'url'                => url($this->id) .'/'. str_replace(' ' , '-' , $this->category->name) .'/' . str_replace(' ' , '-' , $this->title) , 
            'meta_link'          => $this->seo?->link               ?? $this->meta_link ,
            'meta_description'   => $this->seo?->description        ?? $this->meta_description ,
            'focus_keyword'      => $this->seo?->focus_keyword      ?? $this->focus_keyword ,
            'social_title'       => $this->seo?->title_social       ?? $this->social_title ,
            'social_description' => $this->seo?->description_social ?? $this->social_description ,
            'social_image'       => $this->seo?->getImage()         ?? url($this->social_image),
            'social_alt_image'   => $this->seo?->getAlt()           ?? $this->social_alt_text,
        ];
    }

    public function modelFilter()
    {
        return $this->provideFilter(ProductFilter::class);
    }
    
}
