<html>
  <head>
    <title>Travel List</title>
  </head>
  <body>
    <h1>My Travel Bucket List</h1>
    <h2>Places I'd Like to Visit</h2>
    <ul>
      @foreach ($wished as $place)
      <li>{{ $place->name }}</li>
      @endforeach
    </ul>
    <br>
    <a href="/"> <- Back Home </a>
  </body>
</html>
