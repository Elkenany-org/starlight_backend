<?php

namespace App\Models;

use App\Traits\HandleUploadFile;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class category extends Model implements HasMedia
{
    use HasFactory , InteractsWithMedia , HandleUploadFile;
    protected $appends = ['image_url'];
    protected $hidden = ['image'];
    protected $fillable = ['name' , 'image'];
    
    // public function getImageUrlAttribute()
    // {
    //     return url('/').'/'.$this->image;
    // }

    public function getImageUrlAttribute()
    {
        return $this->getFirstMediaUrl('categories');
    }
    
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }
    
}
