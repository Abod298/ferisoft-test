<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryStoreRequest;
use App\Http\Requests\CategoryUpdateRequest;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(){
        $categories = Category::latest()->paginate(10);
        return view('admin.categories.index' ,compact('categories'));

    }
    public function show(Category $category){
        return view('admin.categories.show' , compact('category'));
    }
    public function create(){
        return view('admin.categories.create');
    }
    public function store(CategoryStoreRequest $request){
        Category::create($request->all());
        return redirect()->route('admin.categories.index');
    }
    public function update(CategoryUpdateRequest $request , Category $category){
        $category->update($request->all());
        return redirect()->route('admin.categories.index');
    }
    public function edit(Category $category){
        return view('admin.categories.edit', compact('category'));
    }
    public function destroy(Category $category){
        $category->delete();
        return back();
    }
}
