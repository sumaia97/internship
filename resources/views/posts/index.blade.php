@extends('layouts.app')

@section('content')
<html lang="en">
<head>
    <style>
        </style>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title></title>
</head>

<body style="background-color: #4f0040" >

<br> <br> <br> <br>
        <div class="container-fluid w-100 p-5 h-100 text-white" style="background-color: #4f0040">
        <div class="container">
          <h4 style="padding-left:200px">User need to register or log in; in order to leave a message here.
            </h4>
    </div>
    </div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
         <div class="card-header"><h3 class="display-4">Posts</h3></div>

                <div class="card-body">
                     
                    @if(count($posts) > 0)

                    @foreach($posts as $post)
                    <div class="well" >
                    <div class="row" >
      
                    <div class="col-nd-9 col-sm-9">
                        <h3 style="margin-top: 10px"><a class= "text-black"  href="/posts/{{$post->id}}">{{$post->title}}</a></h3>
                      
                        <small style="color:gray">Written on {{$post->created_at}} by {{$post->user->name}}</small>
                    
                              </div>
                             </div>
                          </div>
             
                           <hr>
                    @endforeach

                    {{$posts->links()}}
                    @else
                    <p>No posts found</p>
                    @endif
                                         
                </div>
            </div>
        </div>
    </div>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
</body>
</html>
@endsection