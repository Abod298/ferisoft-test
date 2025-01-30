@extends('layouts.main')

@section('content')
<div class="container mx-auto mt-8">
    <h1 class="text-3xl font-bold mb-6 text-center">Edit Post</h1>

    <div class="max-w-2xl mx-auto bg-white p-6 rounded-lg shadow-md">
        <form action="{{ route('admin.posts.update', $post->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-4">
                <label for="title" class="block text-sm font-semibold text-gray-700">Title</label>
                <input type="text" id="title" name="title" value="{{ old('title', $post->title) }}" class="mt-2 w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600" required>
                @error('title')
                    <span class="text-red-500 text-sm">{{ $message }}</span>
                @enderror
            </div>

            <div class="mb-4">
                <label for="body" class="block text-sm font-semibold text-gray-700">Body</label>
                <textarea id="body" name="body" rows="4" class="mt-2 w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600" required>{{ old('body', $post->body) }}</textarea>
                @error('body')
                    <span class="text-red-500 text-sm">{{ $message }}</span>
                @enderror
            </div>

            <div class="mb-4">
                <label for="category_id" class="block text-sm font-semibold text-gray-700">Category</label>
                <select id="category_id" name="category_id" class="mt-2 w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600" required>
                    <option value="">Select Category</option>
                    @foreach($categories as $id => $category)
                        <option value="{{ $id }}" {{ old('category_id', $post->category_id) == $id ? 'selected' : '' }}>
                            {{ $category }}
                        </option>
                    @endforeach
                </select>
                @error('category_id')
                    <span class="text-red-500 text-sm">{{ $message }}</span>
                @enderror
            </div>

            <div class="mb-6 text-center">
                <button type="submit" class="bg-indigo-600 text-white py-2 px-4 rounded-lg hover:bg-indigo-700">Update Post</button>
            </div>
        </form>
    </div>
</div>
@endsection
