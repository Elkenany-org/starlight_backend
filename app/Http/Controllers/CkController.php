<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CkController extends Controller
{

    public function uploadImage(Request $request){
        $originName = $request->file('upload')->getClientOriginalName();

        $fileName = pathinfo($originName, PATHINFO_FILENAME);

        $extension = $request->file('upload')->getClientOriginalExtension();

        $fileName = $fileName . '_' . time() . '.' . $extension;

        $allowed_extension = array("jpg" , "jpeg" , "gif", "png", "svg");
           $function_number = $_GET['CKEditorFuncNum'];
        if(in_array($extension, $allowed_extension))
        {
            $request->file('upload')->move(storage_path('app/public'), $fileName);
            $url = asset('storage/' . $fileName);
            $message = '';
            echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($function_number, '$url', '$message');</script>";
        }else{
            $message = 'Image extension Not IN => "jpg" , "jpeg" , "gif", "png", "svg"';
            echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($function_number, '', '$message');</script>";
        }
    }

}
