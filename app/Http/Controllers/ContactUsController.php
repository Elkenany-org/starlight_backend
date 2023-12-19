<?php

namespace App\Http\Controllers;

use App\Models\ContactUs;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:contact.read', ['only' => ['index' , 'archive']]);
        // $this->middleware('permission:contact.create', ['only' => ['create', 'store']]);
        $this->middleware('permission:contact.show', ['only' => ['show']]);
        // $this->middleware('permission:contact.edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:contact.delete', ['only' => ['soft_delete','hardDelete']]);
    }
    
    public function index()
    {
        $all_messages = ContactUs::latest()->paginate(10);
        return view('ContactUs.index')->with('all_messages' , $all_messages);
    }

    public function archive()
    {
        $all_messages = ContactUs::latest()->onlyTrashed()->paginate(10);
        return view('ContactUs.archive')->with('all_messages',$all_messages);
    }
    
    public function show($id)
    {
        $message = ContactUs::where('id' , $id)->first();
        $message->read = '1';
        $message->save();
        return view('ContactUs.show')->with('message' , $message); 
    }

    public function soft_delete($id)
    {
        $message = ContactUs::find($id);
        $message->delete();
        Session()->flash('success', 'Message Archived Successfully'); 
        return redirect()->route('contactus.index');
    }

    public function restore($id)
    {
        $message = ContactUs::withTrashed()->find($id);
        $message->restore();
        Session()->flash('success', 'Message Restore Successfully'); 
        return redirect()->back();
    }

    public function hard_delete($id)
    {
        $message = ContactUs::onlyTrashed()->find($id);
        $message->forceDelete();
        Session()->flash('success', 'Message Deleted Successfully'); 
        return redirect()->back();
    }

    public function search(Request $request)
    {
        $all_messages = ContactUs::where('company_name', 'LIKE', '%'.$request->company_name.'%')
            ->where('first_name','LIKE','%'.$request->first_name.'%')->paginate(10);
        return view('ContactUs.index')->with('all_messages',$all_messages);
    }

    public function archive_search(Request $request)
    {
        $all_messages = ContactUs::onlyTrashed()->where('company_name', 'LIKE', '%'.$request->company_name.'%')
            ->where('first_name','LIKE','%'.$request->first_name.'%')->paginate(10);
        return view('ContactUs.archive')->with('all_messages',$all_messages);
    }

}
