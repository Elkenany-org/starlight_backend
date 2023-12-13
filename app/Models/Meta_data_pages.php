<?php

namespace App\Models;

use App\Traits\HandleUploadFile;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;


class Meta_data_pages extends Model implements HasMedia
{
    use HasFactory , InteractsWithMedia , HandleUploadFile;
    protected $guarded = [];
    
}
