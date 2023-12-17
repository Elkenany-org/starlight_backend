<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use Illuminate\Http\Request;


class ApiContactUsController extends Controller
{
    
    public function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'second_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message' => 'required'
        ]);
        $ret = ContactUs::create([
            'first_name' => $request->first_name,
            'second_name' => $request->second_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
        ]);
        if($ret != null)
        {
            return response()->json(['message'=> 'Form sent successfully'],200);
        }
        else
        {
            return response()->json(['message'=> 'Error in sending'],404);
        }
    }

}
