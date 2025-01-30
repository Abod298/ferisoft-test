@extends('layouts.main') 

@section('content')
<div class="max-w-2xl mx-auto p-6 bg-white shadow-md rounded-lg">
    <h2 class="text-2xl font-bold mb-4">Create a New Post</h2>


    <form action="{{ route('admin.posts.store') }}" method="POST">
        @csrf


        <div class="mb-4">
            <label class="block text-gray-700">Title</label>
            <input type="text" name="title" class="w-full p-2 border rounded" value="{{ old('title') }}">
            @error('title') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
        </div>


        <div class="mb-4">
            <label class="block text-gray-700">Body</label>
            <textarea name="body" class="w-full p-2 border rounded">{{ old('body') }}</textarea>
            @error('body') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
        </div>


        <div class="mb-4">
            <label class="block text-gray-700">Category</label>
            <select name="category_id" class="w-full p-2 border rounded">
                <option value="">Select a Category</option>
                @foreach($categories as $id => $category)
                    <option value="{{ $id }}">{{ $category }}</option>
                @endforeach
            </select>
            @error('category_id') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
        </div>


        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Submit</button>
    </form>
</div>
@endsection
