<%@include file="header.html"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
video {
    position: fixed;
    height: 100%;
    width: 100%;
    object-fit: cover;
    z-index: -1;
}
/* page content */
h1, h2 {
  color: white;
  font-family: Trebuchet MS;
  font-weight: bold;
  text-align: center;
  }

h1 {
  font-size: 6rem;
  margin-top: 30vh; 
}

h2 { font-size: 3rem; }
</style>
</head>
<body>
<video playsinline autoplay muted loop>
  <source src="video.mp4">
  
</video>
<h1>Hello Admin</h1>
<h2>Blood Bank Management System</h2>
</body>
</html>