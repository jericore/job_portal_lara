<!DOCTYPE html>
<html>
<head>
  <title>@yield('title')</title>
</head>
<body>
@include('header')

<main>
  @yield('content')
</main>

<footer>
  @include('footer')
</footer>
</body>
</html>
