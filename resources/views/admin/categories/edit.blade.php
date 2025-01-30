@extends('layouts.main')

@section('content')
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-8">

        <div class="bg-white p-6 rounded-lg shadow-lg">
            <h1 class="text-3xl font-semibold text-gray-800 mb-6">Edit Category</h1>

            <form action="{{ route('admin.categories.update', $category->id) }}" method="POST">
                @csrf
                @method('PUT')

                <div class="mb-6">
                    <label for="name" class="block text-lg text-gray-700 mb-2">Category Name</label>
                    <input type="text" id="name" name="name" class="w-full px-6 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-lg" value="{{ old('name', $category->name) }}" required>
                    @error('name')
                        <span class="text-red-600 text-sm mt-1">{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <button type="submit" class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition duration-300 ease-in-out">
                        Update Category
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
