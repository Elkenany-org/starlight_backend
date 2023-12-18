<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleSeeder extends Seeder
{

    /**
     * Run the database seeds.
     *
     * @return void
    */
    public function run()
    {
        DB::table('roles')->delete();
        DB::table('model_has_roles')->delete();
        DB::table('model_has_permissions')->delete();
        
        app()['cache']->forget('spatie.permission.cache');
        
        $Role  =  Role::create(['name' => 'admin']);
        
        $Permissions = [
            
            // products
            'products.read',
            'products.create',
            'products.edit',
            'products.delete',

            // categories 
            'categories.read',
            'categories.create',
            'categories.edit',
            'categories.delete',

            // events
            'events.read',
            'events.create',
            'events.edit',
            'events.delete',

            //infos
            'infos.read',
            'infos.create',
            'infos.edit',
            'infos.delete',

            //contact
            'contact.read',
            'contact.show',
            'contact.delete',

            // orders
            'orders.read',
            'orders.show',
            'orders.delete',

            // users
            'users.read',
            'users.create',
            'users.edit',
            'users.delete',
            
            // roles
            'roles.read',
            'roles.create',
            'roles.edit',
            'roles.delete',

            //content
            'main_pages.read',
            'main_pages.edit',
            'main_pages.seo',
            
        ];

        foreach ($Permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }
        
        $Role->givePermissionTo($Permissions);
        $user = User::firstOrCreate(['email' => 'admin@starlight.com'],[
            'name' => 'admin',
            'email' => 'admin@starlight.com',
            'password' => Hash::make(12345678),
            'role' => 'admin'
        ]);

        if($user){   
            $user->assignRole('admin');    
        }
    }

}