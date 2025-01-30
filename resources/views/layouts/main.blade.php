<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Ferisoft Test')</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 text-gray-900">

    @include('layouts.navigation')
    <div class="container mx-auto px-4 py-8">

        @if (session('success'))
            <div class="bg-green-100 text-green-800 p-3 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif
        @yield('content')
    </div>

    <footer class="bg-white text-center py-4 shadow-md mt-10">
        <p class="text-gray-600">&copy; {{ date('Y') }} Abdulkadir Alabdullah - Ferisoft Test</p>
    </footer>

        @yield('script')
</body>

</html>
