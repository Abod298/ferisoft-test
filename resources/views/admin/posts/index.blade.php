@extends('layouts.main')

@section('content')
    <div class="container mx-auto px-4 py-8">

        <div class="text-center mb-12">
            <h1 class="text-4xl font-bold text-gray-800 mb-4">All Posts</h1>
            <a href="{{ route('admin.posts.create') }}"
                class="inline-block bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition-colors duration-300">
                Create a New Post
            </a>
        </div>


        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
            @foreach ($posts as $key => $post)
                <div
                    class="bg-white rounded-lg shadow-lg overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-xl">
                    <!-- Image Section (Optional) -->
                    @if ($post->image)
                        <div class="relative h-48 overflow-hidden">
                            <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}"
                                class="w-full h-full object-cover">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent"></div>
                            <div class="absolute inset-0 p-4 flex items-end">
                                <h2 class="text-white text-2xl font-bold">{{ $post->title }}</h2>
                            </div>
                        </div>
                    @else
                        <div class="relative h-48 bg-gradient-to-r from-blue-500 to-purple-600 flex items-end p-4">
                            <h2 class="text-white text-2xl font-bold">{{ $post->title }}</h2>
                        </div>
                    @endif

                    <!-- Content Section -->
                    <div class="px-6 py-4">
                        <p class="text-gray-700 text-base leading-relaxed">{{ Str::limit($post->body, 150, '...') }}</p>
                        <div class="mt-4 flex justify-between items-center">
                            <a href="{{ route('admin.posts.show', $post->id) }}"
                                class="text-blue-600 hover:text-blue-700 transition-colors duration-300 font-semibold">
                                Show
                            </a>
                            <a href="{{ route('admin.posts.edit', $post->id) }}"
                                class="text-green-600 hover:text-green-800 transition-colors duration-300 font-semibold">
                                Edit
                            </a>
                            <form action="{{ route('admin.posts.destroy', $post->id) }}" method="POST" class="inline"
                                onsubmit="return confirm('Are you sure you want to delete this post?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit"
                                    class="text-red-600 hover:text-red-800 transition-colors duration-300 font-semibold">
                                    Delete
                                </button>
                            </form>
                        </div>
                        <div class="mt-2 flex justify-between items-center text-sm text-gray-500">
                            <span>{{ $post->created_at->diffForHumans() }}</span>
                            <span class="font-medium text-gray-700">Category: {{ $post->category->name }}</span>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>

        <div class="mt-12 flex justify-center">
            {{ $posts->links() }}
        </div>
    </div>
@endsection
