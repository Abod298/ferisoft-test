<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostStoreRequest;
use App\Http\Requests\PostUpdateRequest;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $posts = Post::latest()->paginate(8);
        return view('admin.posts.index' ,compact('posts'));

    }
    public function show(Post $post){
        return view('admin.posts.show' , compact('post'));
    }
    public function create(){
        $categories = Category::pluck('name', 'id');
        return view('admin.posts.create' , compact('categories'));
    }
    public function store(PostStoreRequest $request){
        $data = $request->all();
        $data['user_id'] = auth()->id();
        Post::create($data);
        return redirect()->route('admin.posts.index');
    }
    public function update(PostUpdateRequest $request , Post $post){
        $data = $request->all();
        $data['user_id'] = auth()->id();
        $post->update($data);
        return redirect()->route('admin.posts.index');
    }
    public function edit(Post $post){
        $categories = Category::pluck('name', 'id');
        $post->load('category');
        return view('admin.posts.edit', compact('post' , 'categories'));
    }
    public function destroy(Post $post){
        $post->delete();
        return back();
    }
}
