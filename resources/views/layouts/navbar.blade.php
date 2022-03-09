<header class="market-header header">
    <div class="container-fluid">
        <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="{{ route('home') }}"><img
                    src="../assets/front/images/version/market-logo.png" alt=""></a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('home') }}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('categories.single', ['slug' => 'marketing']) }}">Marketing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('categories.single', ['slug' => 'make-money']) }}">Make
                            Money</a>
                    </li>

                    @if (Route::has('login'))
                        <li class="nav-item">
                            @auth
                                <a class="nav-link" href="{{ url('/logout') }}">Log out</a>
                            @else
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">Log in</a>
                        </li>
                        <li class="nav-item">
                            @if (Route::has('register'))
                                <a class="nav-link" href="{{ route('register') }}">Register</a>
                            @endif
                        </li>
                    @endauth
                    @endif

                </ul>

                <form class="form-inline" method="get" action="{{ route('search') }}">
                    <input name="s" class="form-control mr-sm-2 @error('s') in-invalid @enderror" type="text" placeholder="How may I help?" required>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>

                <style>
                    .market-header .form-inline .form-control.in-invalid {
                        border: 2px solid red;
                    }
                </style>

            </div>
        </nav>
    </div><!-- end container-fluid -->
</header><!-- end market-header -->
