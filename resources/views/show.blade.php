@extends('layouts.main')

@section('content')
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-8">
        <div class="mb-6">
            <a href="{{ route('home') }}" class="bg-gray-600 text-white px-6 py-2 rounded-md hover:bg-gray-700 transition duration-300 ease-in-out">
                Back to Posts
            </a>
        </div>
        <div class="bg-white p-6 rounded-lg shadow-lg">
            <h1 class="text-3xl font-semibold text-gray-800 mb-4">{{ $post->title }}</h1>
            <p class="text-gray-600 text-sm mb-4">
                <span class="font-medium text-gray-700">Posted on:</span>
                {{ $post->created_at->format('F j, Y \a\t g:i A') }}
            </p>

            <div class="mb-4">
                <p class="text-lg text-gray-800">{{ $post->body }}</p>
            </div>

            <div class="mt-6 flex justify-between text-sm text-gray-600">
                <div>
                    <span class="font-medium text-gray-700">Category:</span>
                    <span>{{ $post->category->name }}</span>
                </div>
                <div>
                    <span class="font-medium text-gray-700">Author:</span>
                    <span>{{ $post->user->name }}</span>
                </div>
            </div>
    </div>
@endsection
