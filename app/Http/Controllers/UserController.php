<?php

namespace App\Http\Controllers;

use App\Models\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:users.read', ['only' => ['index']]);
        $this->middleware('permission:users.create', ['only' => ['register_form']]);
        $this->middleware('permission:users.edit', ['only' => ['update_role']]);
        $this->middleware('permission:users.delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        $users = User::paginate();
        return view('users.index', compact('users'));
    }

    public function register_form()
    {
        $roles = Role::get();
        return view('auth.register' , get_defined_vars());
    }

    public function update_role(Request $request)
    {
        $id = Auth::id();
        if($id == $request->id)
            return response()->json(['status' => false]);


        $user = User::find($request->id);
        if($user->role == 'admin')
        {
            $user->role = 'user';
        }
        else
        {
            $user->role = 'admin';
        }
        $user->save();

        return response()->json($user->role);
    }

    public function edit(User $user)
    {
        $roles = Role::get();
        return view('users.edit' , get_defined_vars());
    }

    public function update(Request $request , User $user)
    {
        $this->validate($request , [
            'name'      => 'required',
            'email'     => 'required|unique:users,email,'.$user->id,
            'password'  => ['nullable', 'string', 'min:8'],
        ]);
        
        $data = Arr::except($request->all() , ['name' , 'email']);
        $data['password'] = $request->password == null ? $user->password : Hash::make($request->password);
        $user->update($data);
        Session()->flash('success', 'User Updated Successfully');
        $user->syncRoles($request->role);
        return redirect()->route('users.index');
    }

    public function delete(User $user)
    {
        $user->delete();
        Session()->flash('success', 'User Deleted Successfully');
        return redirect()->back();
    }

}
