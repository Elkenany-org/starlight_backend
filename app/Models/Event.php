<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Event extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $dates = ['deleted_at'];
    protected $hidden = ['image'];
    protected $appends = ['image_link'];
    
    protected $fillable = ['title','shortdescription','description','image','alt_text','focus_keyword'
                    ,'social_title','social_link','social_description','social_image','social_alt_text'
                    ,'meta_title','meta_link','meta_description'];
    
    public function getImageLinkAttribute()
    {
        return url('/').'/'.$this->image;
    }

    public function getImageObject()
    {
        if($this->image_url){
            return [ 'url' =>  $this->image_url , 'alt' =>  $this->alt_text ];   
        }
        return null;
    }

    public function getCreatedAt()
    {
       return $this->created_at->format('Y-m-d H:i');
    }

    public function seo()
    {
        return $this->morphOne(Meta_data_pages::class, 'model');
    }

    public function getSlug()
    {
        return  str_replace(' ' , '-' , $this->title);
    }
    
    public function getMetaTags()
    {
        return [
            'title'              => $this->seo?->title              ?? $this->title ,
            'url'                => url($this->id) .'/'. str_replace(' ' , '-' , $this->title) , 
            'meta_link'          => $this->seo?->link               ?? $this->meta_link ,
            'meta_description'   => $this->seo?->description        ?? $this->meta_description ,
            'focus_keyword'      => $this->seo?->focus_keyword      ?? $this->focus_keyword ,
            'social_title'       => $this->seo?->title_social       ?? $this->social_title ,
            'social_description' => $this->seo?->description_social ?? $this->social_description ,
            'social_image'       => $this->seo?->getImage()         ?? url($this->social_image),
            'social_alt_image'   => $this->seo?->getAlt()           ?? $this->social_alt_text,
        ];
    }
    
}
