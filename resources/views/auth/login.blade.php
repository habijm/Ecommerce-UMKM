@extends('layouts.template')
@section('content')
<!-- Single Page Header start -->
<div class="container-fluid page-header py-5">
    <h1 class="text-center text-white display-6">Login</h1>
    <ol class="breadcrumb justify-content-center mb-0">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item active text-white">Login</li>
    </ol>
</div>
<!-- Single Page Header End -->
<div class="container pt-5">
    <div class="row justify-content-center pt-5">
        <div class="col-md-4 pt-5">
            <div class="card pt-5">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    @if(count($errors) > 0)
                    @foreach($errors->all() as $error)
                    <div class="alert alert-warning">{{ $error }}</div>
                    @endforeach
                    @endif
                    @if ($message = Session::get('error'))
                    <div class="alert alert-warning">
                        <p>{{ $message }}</p>
                    </div>
                    @endif
                    @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <p>{{ $message }}</p>
                    </div>
                    @endif
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" name="email" id="email" required class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" required class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary mb-4 mt-4">Login</button>
                            <p>Don't have an account? <a href="{{ route('register') }}" class="text-decoration-none">Sign up</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection