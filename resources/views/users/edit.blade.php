@extends('layouts.app')

@section('content')

<div class="col-lg-6">
    <div class="signin-wrapper">
        <div class="form-wrapper">

            <h4 class="mb-15 pb-3">تعديل مستخدم جديد</h4>

            <form action="{{ route('users.update' , $user->id)}} " method="POST" enctype="multipart/form-data">
                @csrf

                <div class="row">

                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="name">الاسم</label>
                            <input type="text" @error('name') class="form-control is-invalid" @enderror name="name" id="name" placeholder="{{ __('Name') }}" value="{{ $user->name }}" required autocomplete="name" autofocus>
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <!-- end col -->
                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="email">الايميل</label>
                            <input @error('email') class="form-control is-invalid" @enderror type="email" name="email" id="email" placeholder="{{ __('Email') }}" value="{{ $user->email }}" required autocomplete="email">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <!-- end col -->
                    <div class="col-12">
                        <div class="input-style-1">
                            <label for="password">كلمة السر</label>
                            <input type="password" @error('password') class="form-control is-invalid" @enderror name="password" id="password" placeholder="{{ __('Password') }}" autocomplete="off">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div>
                        <div class="input-style-1">
                            <label for="password_confirmation"> Role </label>
                            <select name="role" class="form-control">
                                <option value=""> --- </option>
                                @foreach($roles as $role)
                                    <option value="{{$role->name}}"
                                    {{ in_array($role->id  , $user->roles->pluck('id')->toArray() )  ? 'selected' : '' }}>{{ $role->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <!-- end col -->
                    <div class="col-12">
                        <div class="button-group d-flex justify-content-center flex-wrap">
                            <button type="submit" class="main-btn primary-btn btn-hover w-100 text-center">
                                اضافة
                            </button>
                        </div>
                    </div>

                </div>
                <!-- end row -->
            </form>
        </div>
    </div>
</div>
<!-- end col -->
@endsection
