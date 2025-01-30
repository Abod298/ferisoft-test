<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request){
        $categoryId = $request->input('category');
        $posts = Post::when($categoryId, function($query) use ($categoryId) {
            return $query->where('category_id', $categoryId);
        })
        ->orderBy('created_at', 'desc') // Ordering by the latest posts first
        ->paginate(9);
        $categories = Category::all();
        return view('welcome' , compact('posts' , 'categories'));
    }
    public function show(Post $post){
        return view('show' , compact('post'));
    }
}
