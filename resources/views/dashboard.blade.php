@extends('layouts.main')
@section('content')
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <div class="text-center mb-8">
                        <h3 class="text-2xl font-bold text-gray-800">Welcome to Your Dashboard</h3>
                        <p class="text-gray-600 mt-2">Manage your categories and posts with ease.</p>
                    </div>

                    <div class="flex justify-center space-x-6">
                        <a href="{{ route('admin.categories.index') }}"
                           class="flex flex-col items-center bg-indigo-600 text-white px-8 py-6 rounded-lg hover:bg-indigo-700 transition-colors duration-300 shadow-lg hover:shadow-xl">
                            <span class="text-lg font-semibold">Categories</span>
                        </a>

                        <a href="{{ route('admin.posts.index') }}"
                           class="flex flex-col items-center bg-green-600 text-white px-8 py-6 rounded-lg hover:bg-green-700 transition-colors duration-300 shadow-lg hover:shadow-xl">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                            </svg>
                            <span class="text-lg font-semibold">Posts</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
