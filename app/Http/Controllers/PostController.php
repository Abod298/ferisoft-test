<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostStoreRequest;
use App\Http\Requests\PostUpdateRequest;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;

class PostController extends Controller
{
    use AuthorizesRequests;
    public function index(Request $request){
        $categoryId = $request->input('category');
        $posts = Post::when($categoryId, function($query) use ($categoryId) {
            return $query->where('category_id', $categoryId);
        })
        ->orderBy('created_at', 'desc') // Ordering by the latest posts first
        ->paginate(8);
        $categories = Category::all();
        return view('admin.posts.index' ,compact('posts' , 'categories'));

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
        $this->authorize('update', $post);
        $categories = Category::pluck('name', 'id');
        $post->load('category');
        return view('admin.posts.edit', compact('post' , 'categories'));
    }
    public function destroy(Post $post){
        $this->authorize('delete', $post);
        $post->delete();
        return back();
    }
}
