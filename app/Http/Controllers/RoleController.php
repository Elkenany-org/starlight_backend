<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use App\Http\Requests\StoreRoleRequest;
use App\Http\Requests\UpdateRoleRequest;
use App\Models\Permission;
use Spatie\Permission\Models\Role;


class RoleController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('permission:roles.read', ['only' => ['index']]);
        $this->middleware('permission:roles.create', ['only' => ['create', 'store']]);
        $this->middleware('permission:roles.edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:roles.delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        $roles = Role::paginate();
        return view('roles.index', get_defined_vars());
    }

    public function create()
    {
        $permissions = Permission::permissionsByGroups();
        return view('roles.create' , get_defined_vars());
    }

    public function store(StoreRoleRequest $roleRequest)
    {
        $role =  Role::create($roleRequest->validated());
        $role->syncPermissions($roleRequest->permissions);
        Session()->flash('success', 'Role Added Successfully');
        return redirect()->route('roles.index');
    }

    public function show(Role $role)
    {
        $permissions = Permission::permissionsByGroups();
        $selectedPermissions =  is_null($role) ? [] : $role->permissions->pluck('id')->toArray();
        return view('roles.show' ,get_defined_vars());
    }

    public function edit(Role $role)
    {
        $permissions = Permission::permissionsByGroups();
        $selectedPermissions =  is_null($role) ? [] : $role->permissions->pluck('id')->toArray();
        return view('roles.edit' , get_defined_vars());
    }

    public function update(UpdateRoleRequest $roleRequest ,Role $role)
    {
        $role->update($roleRequest->validated());
        $role->syncPermissions($roleRequest->permissions);
        Session()->flash('success', 'Role Updated Successfully');
        return redirect()->route('roles.index');
    }

    public function delete(Role $role)
    {
        if(!count($role->users)){
            $role->delete();
            Session()->flash('success', 'Role Deleted Successfully');   
        }else{
            Session()->flash('error', 'Cannot  Deleted Role ');   
        }
       
        return redirect()->back();
    }
  
}