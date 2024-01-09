<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{

    public function run()
    {
        User::firstOrCreate(['email' => 'ahmedmahfouz@gmail.com'],[
            'name' => 'ahmed',
            'email' => 'ahmedmahfouz@gmail.com',
            'password' => Hash::make(12345678),
            'role' => 'admin'
        ]);   
    }
    
}
