<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index () {
    
        $title = 'Welcome to Internship website!';
      
        return view('pages.index')->with('title', $title);
    }
    public function faq () {
        $title = 'FAQs';
        return view ('posts.index')->with('title', $title);
    }

 


    


    
}
