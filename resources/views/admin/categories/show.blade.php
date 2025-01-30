@extends('layouts.main')

@section('content')
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-8">
        <div class="bg-white p-6 rounded-lg shadow-lg">
            <h1 class="text-3xl font-semibold text-gray-800 mb-4">{{ $category->name }}</h1>

            <div class="flex space-x-6">
                <a href="{{ route('admin.categories.index') }}"
                    class="bg-gray-600 text-white px-6 py-3 rounded-lg hover:bg-gray-700 transition duration-300 ease-in-out transform hover:scale-105">
                    Back to Categories
                </a>
                @can('update', $category)
                    <a href="{{ route('admin.categories.edit', $category->id) }}"
                        class="bg-yellow-600 text-white px-6 py-3 rounded-lg hover:bg-yellow-700 transition duration-300 ease-in-out transform hover:scale-105">
                        Edit
                    </a>
                @endcan

                @can('update', $category)
                    <form action="{{ route('admin.categories.destroy', $category->id) }}" method="POST" class="inline"
                        onsubmit="return confirm('Are you sure you want to delete this category?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit"
                            class="bg-red-600 text-white px-6 py-3 rounded-lg hover:bg-red-700 transition duration-300 ease-in-out transform hover:scale-105">
                            Delete
                        </button>
                    </form>
                @endcan

            </div>
        </div>
    </div>
@endsection
