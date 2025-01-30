<nav class="bg-white shadow-md">
    <div class="container mx-auto px-6 py-4 flex justify-between items-center">

        <a href="{{ route('home') }}">
            <img src="{{ asset('assets/images/new_logo.png') }}" alt="Ferisoft Blog" class="h-8 w-auto">
        </a>


        <div class="flex space-x-6">
            @guest
                <a href="{{ route('login') }}" class="text-blue-600 hover:text-blue-700 font-semibold">Login</a>
                <a href="{{ route('register') }}" class="text-blue-600 hover:text-blue-700 font-semibold">Register</a>
            @else

                <a href="{{ route('dashboard') }}" class="text-blue-600 hover:text-blue-700 font-semibold">Dashboard</a>

                <a href="{{ route('profile.edit') }}" class="text-blue-600 hover:text-blue-700 font-semibold">Profile</a>
                <form action="{{ route('logout') }}" method="POST" class="inline">
                    @csrf
                    <button type="submit" class="text-blue-600 hover:text-blue-700 font-semibold">Log Out</button>
                </form>
            @endguest
        </div>
    </div>
</nav>
