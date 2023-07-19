<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $users = User::paginate();

        return view('users.index', compact('users'));
    }
    public function register_form()
    {
        return view('auth.register');
    }
    public function update_role($id)
    {
        $user = User::find($id);
        if($user->role == 'admin')
        {
            $user->role == 'user';
        }
        else
        {
            $user->role == 'admin';
        }
        $user->save();
        return redirect();
    }

    public function toggle(Request $request)
    {
        // Handle the checkbox toggle logic here
        return response()->json(['status' => 'success']);
    }
}
