<input type="text" class="mySearch mx-auto d-block" id="mySearch" onkeyup="search(this.value)" placeholder="Search" title="Type in a category">
<ul>

    <li class=" nav-item @if(request()->routeIs('Products.index') || request()->routeIs('Products.archive')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_1" aria-controls="ddmenu_1" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-newspaper fa-sm"></i>
            </span>
            <span class="text">Products</span>
        </a>
        <ul id="ddmenu_1" class="dropdown-nav collapse">
            <li>
                <a href="{{ route('Products.index') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                    Show
                </a>
            </li>
            <li>
                <a href="{{ route('Products.create') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                    Add
                </a>
            </li>
        </ul>
    </li>

    <li class=" nav-item @if(request()->routeIs('category.index') || request()->routeIs('category.archive')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" class="" data-bs-toggle="collapse" data-bs-target="#ddmenu_2" aria-controls="ddmenu_2" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-list"></i>
            </span>
            <span class="text">Categories</span>
        </a>
        <ul id="ddmenu_2" class="dropdown-nav collapse">
            <li>
                <a href="{{ route('category.index') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                    Show
                </a>
            </li>
            <li>
                <a href="{{ route('category.create') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                    Add
                </a>
            </li>
        </ul>
    </li>
    <li class=" nav-item @if(request()->routeIs('Events.index') || request()->routeIs('Events.archive')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" class="" data-bs-toggle="collapse" data-bs-target="#ddmenu_3" aria-controls="ddmenu_3" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-newspaper fa-sm"></i>
            </span>
            <span class="text">Events</span>
        </a>
        <ul id="ddmenu_3" class="dropdown-nav collapse">
            <li>
                <a href="{{ route('Events.index') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                    Show
                </a>
            </li>
            <li>
                <a href="{{ route('Events.create') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                    Add
                </a>
            </li>
        </ul>
    </li>


    <li class=" nav-item @if(request()->routeIs('info.index') || request()->routeIs('info.archive')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_5" aria-controls="ddmenu_5" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-circle-info"></i>
            </span>
            <span class="text">Contact Info</span>
        </a>
        <ul id="ddmenu_5" class="dropdown-nav collapse">
            <li>
                <a href="{{ route('info.index') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                    Show
                </a>
            </li>
            <li>
                <a href="{{ route('info.create') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                    Add
                </a>
            </li>
        </ul>
    </li>


    <li class="nav-item @if(request()->routeIs('orders.index') || request()->routeIs('orders.archive')) active @endif">
        <a class="search " href="{{route('orders.index')}}">
            <span class="icon">
                <i class="fa-solid fa-message"></i>
            </span>
            <span class="text">Orders</span>
        </a>
    </li>
    <li class="nav-item @if(request()->routeIs('contactus.index') || request()->routeIs('contactus.archive')) active @endif">
        <a class="search " href="{{route('contactus.index')}}">
            <span class="icon">
                <i class="fa-solid fa-message"></i>
            </span>
            <span class="text">Messages</span>
        </a>
    </li>
    @if (Auth::check() && Auth::user()->role == 'admin')
    <li class=" nav-item @if(request()->routeIs('users.index') || request()->routeIs('register_form')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_6" aria-controls="ddmenu_6" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-circle-info"></i>
            </span>
            <span class="text">Users</span>
        </a>
        <ul id="ddmenu_6" class="dropdown-nav collapse">
            <li>
                <a href="{{ route('users.index') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                    Show
                </a>
            </li>
            <li>
                <a href="{{ route('register_form') }}">
                    <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                    Add
                </a>
            </li>
        </ul>
    </li>
    @endif

    {{-- <li class=" nav-item @if(request()->routeIs('metadata.index') || request()->routeIs('metadata.create')) active @else noneactive @endif nav-item-has-children">
        <a class="search collapsed" class="" data-bs-toggle="collapse" data-bs-target="#ddmenu_7"
           aria-controls="ddmenu_7" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-link"></i>
            </span>
            <span class="text">Meta data</span>
        </a>
        <ul id="ddmenu_7" class="dropdown-nav collapse" style="">
            <li>
                <a href="{{route('metadata.index')}}">
    <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
    Show
    </a>
    <a href="{{route('metadata.create')}}">
        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
        Add
    </a>
    </li>
</ul>
</li> <br> --}}

<div class="col-12 d-flex ms-2  mt-2">
    <br />
    <h5 class="font-weight-bold" style="color: #0d6efd;">Main Pages</h5>
    <br />
</div>

<li class=" nav-item nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_8" aria-controls="ddmenu_8" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">Home</span>
    </a>
    <ul id="ddmenu_8" class="dropdown-nav collapse">
        <li>
            <a href="">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' ,['page_name' => 'home', 'type' => 'header']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Header
            </a>
        </li>
    </ul>
</li>

<li class=" nav-item nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_9" aria-controls="ddmenu_9" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">About us</span>
    </a>
    <ul id="ddmenu_9" class="dropdown-nav collapse">
        <li>
            <a href="">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' ,['page_name' => 'aboutus', 'type' => 'header']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Header
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'whoweare']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Who we are
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'ourvision']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Our vision
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'ourmission']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Our Mission
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'objectives']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Objectives
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'sustainability']) }}">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Sustainability
            </a>
        </li>
    </ul>
</li>

<li class=" nav-item nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_products" aria-controls="ddmenu_products" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">Products</span>
    </a>
    <ul id="ddmenu_products" class="dropdown-nav collapse">
        <li>
            <a href="">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>

    </ul>
</li>

<li class=" nav-item nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_events" aria-controls="ddmenu_events" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">Events</span>
    </a>
    <ul id="ddmenu_events" class="dropdown-nav collapse">
        <li>
            <a href="">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>

    </ul>
</li>

<li class=" nav-item nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_contact" aria-controls="ddmenu_contact" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">Contact Us</span>
    </a>
    <ul id="ddmenu_contact" class="dropdown-nav collapse">
        <li>
            <a href="">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>

    </ul>
</li>
</ul>

<script>
    function search(input) {
        input = input.toLowerCase()
        let links = document.querySelectorAll(".search")

        for (let index = 0; index < links.length; index++) {
            if (links[index].textContent.toLowerCase().includes(input)) {
                links[index].style.display = "flex"
            } else {
                links[index].style.display = "none"
            }
        }
    }

</script>
