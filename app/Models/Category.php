<?php

namespace App\Models;

use App\ModelFilters\CategoryFilter;
use App\Traits\HandleUploadFile;
use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;


class category extends Model implements HasMedia
{
    use HasFactory , InteractsWithMedia , HandleUploadFile , Filterable;
    protected $appends = ['image_url'];
    protected $hidden = ['image'];
    protected $fillable = ['name' , 'slug' , 'image'];
    
    public function getImageUrlAttribute()
    {
        if($this->getFirstMediaUrl('categories') == null){
            return url('/').'/'.$this->image;
        }
        return $this->getFirstMediaUrl('categories');
    }

    public function getImageObject()
    {
        if($this->image_url){
            return [ 'url' =>  $this->image_url , 'alt' =>  $this->getFirstMedia('categories')?->getCustomProperty('alt') ];   
        }
        return null;
    }

    public function getAlt()
    {
        return $this->getFirstMedia('categories')?->getCustomProperty('alt');
    }
    
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function getCreatedAt()
    {
       return $this->created_at->format('Y-m-d H:i');
    }

    public function modelFilter()
    {
        return $this->provideFilter(CategoryFilter::class);
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
        return  str_replace(' ' , '-' , strtolower($this->name));
    }
    
    public function getMetaTags()
    {
        return [
            'title'              => $this->seo?->title,
            'url'                => url($this->id) .'/'. str_replace(' ' , '-' , $this->name), 
            'meta_link'          => $this->seo?->link,
            'meta_description'   => $this->seo?->description,
            'focus_keyword'      => $this->seo?->focus_keyword,
            'social_title'       => $this->seo?->title_social,
            'social_description' => $this->seo?->description_social,
            'social_image'       => $this->seo?->getImage(),
            'social_alt_image'   => $this->seo?->getAlt(),
        ];
    }
    
}
