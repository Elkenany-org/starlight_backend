<?php

namespace App\Models;

use App\Traits\HandleUploadFile;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;


class Meta_data_pages extends Model implements HasMedia
{
    use HasFactory , InteractsWithMedia , HandleUploadFile;
    protected $guarded = [];

    public function getImage(){
        return $this->getFirstMediaUrl('meta_data_pages');
    }

    public function getAlt(){
        return $this->getFirstMedia('meta_data_pages')?->getCustomProperty('alt');
    }
    
}
