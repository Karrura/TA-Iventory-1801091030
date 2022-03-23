<!--
=========================================================
* Soft UI Dashboard - v1.0.3
=========================================================

* Product Page: https://www.creative-tim.com/product/soft-ui-dashboard
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/img/apple-icon.png') }}"> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <title>
        Login SIVENT Mandeh Kanduang
    </title>
    <link id="pagestyle" href="{{ asset('assets/css/soft-ui-dashboard.css?v=1.0.3') }}" rel="stylesheet" />
    <nav class="navbar navbar-dark" style="background-color: #b2b3b4">
        <span class="navbar-brand mb-0 h1" style="margin: auto; font-family: sans-serif; font-size: 32px; color:white">SIVENT Mandeh Kanduang</span>
    </nav>
</head>

<body class="" style="background: linear-gradient(to right, #343a40, #C5C5C5);">
    
    <main class="main-content  mt-0" >
        <section>
            <div class="page-header min-vh-75">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-5 col-md-6 d-flex flex-column mx-auto" style="width: 45%;">
                            <div class="card card-plain mt-4" style="border: groove; background: transparent; border-color: transparent;">
                                <div class="card-header pb-0 text-left bg-transparent">
                                    @if(Session::has('error'))
                                    <div class="alert alert-dismissible fade show" style="background-color: #C5C5C5; color: black; font-style: bold" role="alert">
                                        {{session('error')}}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" style="background-color: #C5C5C5; color: black">X</button>
                                      </div>
                                    @endif
                                    @if(Session::has('success'))
                                    <div class="alert alert-success alert-dismissible fade show text-white" role="alert">
                                        Logout Berhasil !
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">X</button>
                                      </div>
                                    @endif
                                    <h3 class="font-weight-bolder" style="font-size: 32px; color: white; text-align: center;">Login To System</h3>
                                </div>
                                <div class="card-body">
                                    <form role="form" action="{{ route('proses.login') }}" method="POST">
                                        @csrf
                                        <label style="font-size: 18px; font-family: serif; color: white">Username</label>
                                        <div class="mb-3">
                                            <input type="text" class="form-control" placeholder="Username" aria-label="Email" aria-describedby="email-addon" name="username">
                                        </div>
                                        <label style="font-size: 18px; font-family: serif; color: white">Password</label>
                                        <div class="mb-3">
                                            <input type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="password-addon" name="password">
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-lg mt-4" style="background-color: #F4F3F3; color: #343a40 ">Sign In</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
    <!--   Core JS Files   -->
    <script src="{{asset('assets/js/core/popper.min.js')}}"></script>
    <script src="{{asset('assets/js/core/bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/perfect-scrollbar.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/smooth-scrollbar.min.js')}}"></script>
    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }

    </script>
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="{{asset('assets/js/soft-ui-dashboard.min.js?v=1.0.3')}}"></script>
</body>

</html>
