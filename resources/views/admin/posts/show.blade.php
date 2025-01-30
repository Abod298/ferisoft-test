@extends('layouts.main')

@section('content')
    <div class="container mx-auto mt-8">
        <div class="max-w-3xl mx-auto bg-white p-6 rounded-lg shadow-md">
            <h1 class="text-4xl font-bold text-gray-800 mb-4">{{ $post->title }}</h1>

            <div class="text-sm text-gray-600 mb-4">
                <span>Category: <strong>{{ $post->category->name }}</strong></span>
                <span class="ml-4">Published on: {{ $post->created_at->format('M d, Y') }}</span>
            </div>

            <p class="text-lg text-gray-700 mb-6">{{ $post->body }}</p>

            <div class="flex justify-between items-center">
                <a href="{{ route('admin.posts.index') }}"
                    class="bg-indigo-600 text-white px-6 py-2 rounded-lg hover:bg-indigo-700">Back to Posts</a>

                @can('upadte', $post)
                    <a href="{{ route('admin.posts.edit', $post->id) }}" class="text-indigo-600 hover:text-indigo-800">Edit
                        Post</a>
                @endcan

                @can('delete', $post)
                    <form action="{{ route('admin.posts.destroy', $post->id) }}" method="POST"
                        onsubmit="return confirm('Are you sure you want to delete this post?')" class="inline-block">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="text-red-600 hover:text-red-800">Delete Post</button>
                    </form>
                @endcan

            </div>
        </div>
    </div>
@endsection
