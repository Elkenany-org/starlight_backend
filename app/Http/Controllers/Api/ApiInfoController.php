<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\InfoResource;
use App\Models\Info;
use Illuminate\Http\Request;


class ApiInfoController extends Controller
{
    
    public function index()
    {
        $infos = InfoResource::collection(Info::get());
        return $this->returnJSON($infos);
    }

    public function show(Request $request)
    {
        $info = new InfoResource(Info::where('type' , $request->type)->first());
        return $this->returnJSON($info);
    }
    
}
