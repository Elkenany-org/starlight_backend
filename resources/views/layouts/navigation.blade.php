<input type="text" class="mySearch mx-auto d-block" id="mySearch" onkeyup="search(this.value)" placeholder="Search" title="Type in a category">

<ul>
 
    @can('products.read')
        <li class=" nav-item @if(request()->routeIs('Products.*')) active @endif nav-item-has-children">
            <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_1" aria-controls="ddmenu_1" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-newspaper fa-sm"></i>
                </span>
                <span class="text">Products</span>
            </a>
            <ul id="ddmenu_1" class="dropdown-nav collapse @if(request()->routeIs('Products.*')) show @endif">
                <li>
                    <a href="{{ route('Products.index') }}" class="@if(request()->routeIs('Products.index')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>
                @can('products.create')
                <li>
                    <a href="{{ route('Products.create') }}" class="@if(request()->routeIs('Products.create')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

    @can('categories.read')
        <li class=" nav-item @if(request()->routeIs('category.*')) active @endif nav-item-has-children">
            <a class="search collapsed" class="" data-bs-toggle="collapse" data-bs-target="#ddmenu_2" aria-controls="ddmenu_2" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-list"></i>
                </span>
                <span class="text">Categories</span>
            </a>
            <ul id="ddmenu_2" class="dropdown-nav collapse @if(request()->routeIs('category.*')) show @endif" >
                <li>
                    <a href="{{ route('category.index') }}" class="@if(request()->routeIs('category.index')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>

                @can('categories.create')
                <li>
                    <a href="{{ route('category.create') }}" class="@if(request()->routeIs('category.create')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

    @can('events.read')
        <li class=" nav-item @if(request()->routeIs('Events.*')) active @endif nav-item-has-children">
            <a class="search collapsed" class="" data-bs-toggle="collapse" data-bs-target="#ddmenu_3" aria-controls="ddmenu_3" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-newspaper fa-sm"></i>
                </span>
                <span class="text">Events</span>
            </a>
            <ul id="ddmenu_3" class="dropdown-nav collapse @if(request()->routeIs('Events.*')) show @endif">
                <li>
                    <a href="{{ route('Events.index') }}" class="@if(request()->routeIs('Events.index')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>
                @can('events.create')
                <li>
                    <a href="{{ route('Events.create') }}" class="@if(request()->routeIs('Events.create')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

    @can('infos.read')
        <li class=" nav-item @if(request()->routeIs('info.*')) active @endif nav-item-has-children">
            <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_5" aria-controls="ddmenu_5" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-circle-info"></i>
                </span>
                <span class="text">Contact Info</span>
            </a>
            <ul id="ddmenu_5" class="dropdown-nav collapse @if(request()->routeIs('info.*')) show @endif">
                <li>
                    <a href="{{ route('info.index') }}" class="@if(request()->routeIs('info.index')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>
                @can('infos.create')
                <li>
                    <a href="{{ route('info.create') }}" class="@if(request()->routeIs('info.create')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

    @can('orders.read')
        <li class="nav-item @if(request()->routeIs('orders.*')) active @endif">
            <a class="search " href="{{route('orders.index')}}">
                <span class="icon">
                    <i class="fa-solid fa-message"></i>
                </span>
                <span class="text">Orders</span>
            </a>
        </li>
    @endcan

    @can('contact.read')
        <li class="nav-item @if(request()->routeIs('contactus.*')) active @endif">
            <a class="search " href="{{route('contactus.index')}}">
                <span class="icon">
                    <i class="fa-solid fa-message"></i>
                </span>
                <span class="text">Messages</span>
            </a>
        </li>
    @endcan

    @can('users.read')
        <li class=" nav-item @if(request()->routeIs('users.*') || request()->routeIs('register_form')) active @endif nav-item-has-children">
            <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_6" aria-controls="ddmenu_6" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-circle-info"></i>
                </span>
                <span class="text">Users</span>
            </a>
            <ul id="ddmenu_6" class="dropdown-nav collapse @if(request()->routeIs('users.*') || request()->routeIs('register_form')) show @endif">
                <li>
                    <a href="{{ route('users.index') }}" class="@if(request()->routeIs('users.index')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>
                @can('users.create')
                <li>
                    <a href="{{ route('register_form') }}"  class="@if(request()->routeIs('register_form')) active @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

    @can('roles.read')
        <li class=" nav-item @if(request()->routeIs('roles.*')) active  @endif nav-item-has-children">
            <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_88" aria-controls="ddmenu_88" aria-expanded="true" aria-label="Toggle navigation">
                <span class="icon">
                    <i class="fa-solid fa-circle-info"></i>
                </span>
                <span class="text">Roles</span>
            </a>
            <ul id="ddmenu_88" class="dropdown-nav collapse @if(request()->routeIs('roles.*')) show  @endif">
                <li>
                    <a href="{{ route('roles.index') }}" class="@if(request()->routeIs('roles.index')) active  @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-eye m-0" style="font-size: 14px"></i></div>
                        Show
                    </a>
                </li>
                @can('roles.create')
                <li>
                    <a href="{{ route('roles.create') }}" class="@if(request()->routeIs('roles.create')) active  @endif">
                        <div class="ico w-fit"><i class="fa-solid fa-plus m-0" style="font-size: 14px"></i></div>
                        Add
                    </a>
                </li>
                @endcan
            </ul>
        </li>
    @endcan

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

@can('main_pages.read')
<div class="col-12 d-flex ms-2  mt-2">
    <br />
    <h5 class="font-weight-bold" style="color: #0d6efd;">Main Pages</h5>
    <br />
</div>

<li class=" nav-item @if(request()->page_name == 'home' || Request::is('content/seo/home')) active @endif nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_8" aria-controls="ddmenu_8" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">Home</span>
    </a>
    <ul id="ddmenu_8" class="dropdown-nav collapse @if(request()->page_name == 'home' || Request::is('content/seo/home')) show @endif">
        @can('main_pages.seo')
            <li>
                <a href="{{ route('content.seo.show', ['type' => 'home']) }}" class="@if(Request::is('content/seo/home')) active  @endif">
                    <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                    Seo
                </a>
            </li>
        @endcan
        <li>
            <a href="{{ route('content.show' ,['page_name' => 'home', 'type' => 'header']) }}" class="@if(request()->page_name == 'home' && request()->type == 'header') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Header
            </a>
        </li>
    </ul>
</li>

<li class=" nav-item @if(request()->page_name == 'aboutus' || Request::is('content/seo/about')) active @endif nav-item-has-children">
    <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_9" aria-controls="ddmenu_9" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon">
            <i class="fa-solid fa-circle-info"></i>
        </span>
        <span class="text">About us</span>
    </a>
    <ul id="ddmenu_9" class="dropdown-nav collapse @if(request()->page_name == 'aboutus' || Request::is('content/seo/about')) show @endif">
        @can('main_pages.seo')
        <li>
            <a href="{{ route('content.seo.show', ['type' => 'about']) }}" class="@if(Request::is('content/seo/about')) active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Seo
            </a>
        </li>
        @endcan
        <li>
            <a href="{{ route('content.show' ,['page_name' => 'aboutus', 'type' => 'header']) }}" class="@if(request()->page_name == 'aboutus' && request()->type == 'header') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Header
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'whoweare']) }}" class="@if(request()->page_name == 'aboutus' && request()->type == 'whoweare') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Who we are
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'ourvision']) }}"  class="@if(request()->page_name == 'aboutus' && request()->type == 'ourvision') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Our vision
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'ourmission']) }}" class="@if(request()->page_name == 'aboutus' && request()->type == 'ourmission') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Our Mission
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'objectives']) }}" class="@if(request()->page_name == 'aboutus' && request()->type == 'objectives') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Objectives
            </a>
        </li>
        <li>
            <a href="{{ route('content.show' , ['page_name' => 'aboutus', 'type' => 'sustainability']) }}" class="@if(request()->page_name == 'aboutus' && request()->type == 'sustainability') active  @endif">
                <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                Sustainability
            </a>
        </li>
    </ul>
</li>

@can('main_pages.seo')
    <li class=" nav-item @if(Request::is('content/seo/products')) active @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_products" aria-controls="ddmenu_products" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-circle-info"></i>
            </span>
            <span class="text">Products</span>
        </a>
        <ul id="ddmenu_products" class="dropdown-nav collapse  @if(Request::is('content/seo/products')) show @endif">
            <li>
                <a href="{{ route('content.seo.show', ['type' => 'products']) }}" class="@if(Request::is('content/seo/products')) active @endif">
                    <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                    Seo
                </a>
            </li>
        </ul>
    </li>
@endcan

@can('main_pages.seo')
    <li class=" nav-item @if(Request::is('content/seo/events')) active @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_events" aria-controls="ddmenu_events" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-circle-info"></i>
            </span>
            <span class="text">Events</span>
        </a>
        <ul id="ddmenu_events" class="dropdown-nav collapse @if(Request::is('content/seo/events')) show @endif">
            <li>
                <a href="{{ route('content.seo.show', ['type' => 'events']) }}" class="@if(Request::is('content/seo/events')) active @endif">
                    <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                    Seo
                </a>
            </li>
        </ul>
    </li>
@endcan

@can('main_pages.seo')
    <li class=" nav-item @if(Request::is('content/seo/contact')) active @endif nav-item-has-children">
        <a class="search collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_contact" aria-controls="ddmenu_contact" aria-expanded="true" aria-label="Toggle navigation">
            <span class="icon">
                <i class="fa-solid fa-circle-info"></i>
            </span>
            <span class="text">Contact Us</span>
        </a>
        <ul id="ddmenu_contact" class="dropdown-nav collapse @if(Request::is('content/seo/contact')) show @endif">
            <li>
                <a href="{{ route('content.seo.show', ['type' => 'contact']) }}" class="@if(Request::is('content/seo/contact')) active @endif">
                    <div class="ico w-fit"><i class="fa-solid fa-page m-0" style="font-size: 14px"></i></div>
                    Seo
                </a>
            </li>
        </ul>
    </li>
@endcan

@endcan

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
