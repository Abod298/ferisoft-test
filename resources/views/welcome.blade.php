@extends('layouts.main') <!-- Assuming you have a master layout -->

@section('content')
    <div class="container mx-auto px-4 py-8">
        <h1 class="text-3xl font-semibold mb-6">Latest Posts</h1>
        <div class="w-full max-w-xs mx-auto my-4">
            <label for="category" class="block text-sm font-medium text-gray-700">Choose a Category</label>
            <select id="category" name="category" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500">
                <option value="">Select Category</option>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}" {{ request('category') == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
            @foreach ($posts as $key => $post)
                <div
                    class="bg-white rounded-lg shadow-lg overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-xl">
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
                            <a href="{{ route('post.show', $post->id) }}"
                                class="inline-flex items-center text-blue-600 hover:text-blue-700 font-semibold transition-all duration-300">
                                Read more
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7">
                                    </path>
                                </svg>
                            </a>
                            <span class="text-sm text-gray-500">{{ $post->created_at->diffForHumans() }}</span>
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
@section('script')
<script>
    document.getElementById('category').addEventListener('change', function() {
        const categoryId = this.value;
        const url = new URL(window.location.href);

        if (categoryId) {
            url.searchParams.set('category', categoryId);
        } else {
            url.searchParams.delete('category');
        }

        window.location.href = url.toString();
    });
</script>
@endsection
