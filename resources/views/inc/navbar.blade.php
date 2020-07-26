<!doctype html>
<html lang="en">
  <head>
    <style>
        
        .nav-item:hover{
            background-color: white;
            opacity:0.8;
        }

        
        .nav-item{
            font-size: 1.50em ;
            
        }
        
        .round {
          border-radius: 50%;
          margin: 15px 5px;
        }

        </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="https://fonts.googleapis.com/css2?family=Muli:wght@900&display=swap" rel="stylesheet">
    <title></title>
  </head>

<body>
<nav class=" navbar navbar-expand-lg  navbar-light  fixed-top " style="background-color: #e8d5e4 ; font-family: 'Muli', sans-serif;"   > 

    <div class="container-fluid">
        <a class="navbar-brand round" href="{{ url('/') }}">
         <h5>INTERNSHIP</h5>
            
           <!-- {{ config('app.name', 'Laravel') }} -->
            
    
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav mr-auto">

            </ul>

            <ul class="navbar-nav mr-auto">
                <li class="nav-item round">
                    <a class="nav-link " href="/"><i class="fa fa-fw fa-home" style="color:#1c2a48"></i>Home<span class="sr-only">(current)</span></a>
                </li>
               
                <li class="nav-item round">
                    <a class="nav-link " href="/posts">Posts<span class="sr-only">(current)</span></a>
                </li>
                
            </ul>

            

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav  ml-auto" >
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item round">
                        
                        <a class="nav-link" href="{{ route('login') }}"><i class="fa fa-fw fa-user" style="color:#1c2a48"></i>{{ __('Login') }}</a>
                        
                    </li>

                    
                    @if (Route::has('register'))
                        <li class="nav-item round">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif

                    
                @else

                

                <li class="nav-item dropdown">
                    
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                       
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>

                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="/dashboard">My dashboard</a>
                    </li>
                    
                </ul>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">

                    @csrf
                   
                   </form> 
                   
                   <li class="nav-item">
                   
                    <a class="nav-link" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                   
                       {{ __('Logout') }}
                   
                    </a>
                   
                   </li>
                    
            
                @endguest
            </ul>
        </div>
    </div>
</nav>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
