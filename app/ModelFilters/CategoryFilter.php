<?php 

namespace App\ModelFilters;

use EloquentFilter\ModelFilter;
use Illuminate\Support\Str;

class CategoryFilter extends ModelFilter
{
    
    public function stringUpperToLower(string $value): string
    {
        return Str::lower($value);
    }

    public function name($search)
    {
        return  $this->whereRaw("LOWER(name) LIKE ?", ["%{$this->stringUpperToLower($search)}%"]);
    }
    
}
