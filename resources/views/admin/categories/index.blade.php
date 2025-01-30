@extends('layouts.main')

@section('content')
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 py-8">

        <div class="flex justify-between items-center mb-6">
            <h1 class="text-3xl font-semibold text-gray-800">Categories</h1>
            <a href="{{ route('admin.categories.create') }}"
                class="bg-blue-600 text-white px-6 py-3 rounded-lg shadow-md hover:bg-blue-700 transition duration-300 ease-in-out transform hover:scale-105">Create
                Category</a>
        </div>

        <div class="overflow-x-auto bg-white rounded-lg shadow-lg border border-gray-200 >
            <table class="min-w-full table-auto text-sm text-gray-700">
                <thead class="bg-gray-100 border-b border-gray-300">
                    <tr>
                        <th class="px-6 py-3 text-left">ID</th>
                        <th class="px-6 py-3 text-left">Category Name</th>
                        <th class="px-6 py-3 text-left">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($categories as $category)
                        <tr class="border-b hover:bg-gray-50">
                            <td class="px-6 py-4">{{ $category->id }}</td>
                            <td class="px-6 py-4 font-medium text-gray-800">{{ $category->name }}</td>
                            <td class="px-6 py-4 flex space-x-4">
                                <a href="{{ route('admin.categories.show', $category->id) }}"
                                    class="text-blue-600 hover:text-blue-700 transition duration-200">View</a>
                                @can('update' , $category)
                                    <a href="{{ route('admin.categories.edit', $category->id) }}"
                                        class="text-yellow-600 hover:text-yellow-700 transition duration-200">Edit</a>
                                @endcan
                                @can('delete' , $category)
                                    <form action="{{ route('admin.categories.destroy', $category->id) }}" method="POST"
                                        class="inline"
                                        onsubmit="return confirm('Are you sure you want to delete this category?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit"
                                            class="text-red-600 hover:text-red-700 transition duration-200">Delete</button>
                                    </form>
                                @endcan

                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="mt-6 flex justify-center">
            {{ $categories->links() }}
        </div>
    </div>
@endsection
