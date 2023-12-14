<?php 

namespace App\ModelFilters;

use EloquentFilter\ModelFilter;
use Illuminate\Support\Str;

class ProductFilter extends ModelFilter
{  
    public function stringUpperToLower(string $value): string
    {
        return Str::lower($value);
    }

    public function title($search)
    {
        return  $this->whereRaw("LOWER(title) LIKE ?", ["%{$this->stringUpperToLower($search)}%"]);
    }
    
    public function categoryId($categoryId)
    {
        return $this->where('category_id' , $categoryId);
    }
}
