@extends('layouts.app')

@section('content')

<!doctype html>
<html lang="en">

<head>
<style>

.vertical {
  border-left: 1px solid gainsboro;
  height: 500px;
}



</style>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title></title>
</head>


<body style="background-color: #1c2a48 ">
    
        <div class="container-fluid w-100 p-5 h-100 text-white" style="background-color: #1c2a48 ; padding-bottom:170px">
        <div class="container">
          <h1 class="display-3" style="padding-top:70px">{{$title}}</h1>
          <h3 style= "margin-bottom: 150px">User need to log in before leaving and sharing any messages or feedbacks here.
          <p class="float-right" style="margin-bottom: 40px">
              <br>
              <div class="container" style="text-align: center ; padding-top: 100px">
              <a class="btn btn-primary btn-lg" href="/login" role="button">Login</a> 
              <a class="btn btn-success btn-lg" href="/register" role="button">Register</a>
              </div>
            </p>
            </h3>
    </div>
    </div>

    <div class

   





    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


  </body>   
  </html>


@endsection()
