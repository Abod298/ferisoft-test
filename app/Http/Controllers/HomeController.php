<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $posts = Post::latest()->paginate(9);
        return view('welcome' , compact('posts'));
    }
    public function show(Post $post){
        return view('show' , compact('post'));
    }
}
