<?php

namespace Database\Seeders;

use App\Models\Meta_data_pages;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SeoSeeder extends Seeder
{
    
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Meta_data_pages::firstOrCreate([
            'title'     => 'Home Page',
            'is_page'   => 1,
            'page_name' => 'home',
        ]);

        Meta_data_pages::firstOrCreate([
            'title'     => 'About Us Page',
            'is_page'   => 1,
            'page_name' => 'about',
        ]);

        Meta_data_pages::firstOrCreate([
            'title'     => 'Products Page',
            'is_page'   => 1,
            'page_name' => 'products',
        ]);

        Meta_data_pages::firstOrCreate([
            'title'     => 'Events Page',
            'is_page'   => 1,
            'page_name' => 'events',
        ]);

        Meta_data_pages::firstOrCreate([
            'title'     => 'Contact Us Page',
            'is_page'   => 1,
            'page_name' => 'contact',
        ]);
    }
}
