<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\EventResource;
use App\Models\Event;

class ApiEventController extends Controller
{
    
    public function index()
    {
        $events = EventResource::collection(Event::latest()->get());
        return $this->returnJSON($events);
    }

    public function show($id)
    {
        $event = new EventResource(Event::where('id' , $id)->first());
        return $this->returnJSON($event);
    }
    
}
