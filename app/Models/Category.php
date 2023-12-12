<?php

namespace App\Models;

use App\ModelFilters\CategoryFilter;
use App\Traits\HandleUploadFile;
use EloquentFilter\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class category extends Model implements HasMedia
{
    use HasFactory , InteractsWithMedia , HandleUploadFile , Filterable;
    protected $appends = ['image_url'];
    protected $hidden = ['image'];
    protected $fillable = ['name' , 'image'];
    
    public function getImageUrlAttribute()
    {
        if($this->getFirstMediaUrl('categories') == null){
            return url('/').'/'.$this->image;
        }
        return $this->getFirstMediaUrl('categories');
    }
    
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function getCreatedAt(){
       return $this->created_at->format('Y-m-d H:i');
    }

    public function modelFilter()
    {
        return $this->provideFilter(CategoryFilter::class);
    }
}
