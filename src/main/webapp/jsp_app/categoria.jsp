<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My App</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="<%out.print(getServletContext().getContextPath());%>/resources_app/favicon.png">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/themify-icons.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/metisMenu.css">
        <!-- others css -->
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/typography.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/default-css.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/styles.css">
        <link rel="stylesheet" href="<%out.print(getServletContext().getContextPath());%>/assets/css/responsive.css">
        <!-- modernizr css -->
        <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">
                <div class="sidebar-header">
                    <div class="logo">
                        <a href="index.jsp"><img src="<%out.print(getServletContext().getContextPath());%>/assets/images/icon/logoM.png" alt="logo"></a>
                    </div>
                    <br>
                    <h6 class="text-center" style="color: aliceblue"><i class="fa fa-user"></i> <strong>Mikoli - Usuario Logeado</strong></h6>
                </div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">
                                <li class="active"><a href="index.jsp"><i class="fa fa-home"></i> <span>Inicio</span></a></li>
                                <li>
                                    <a href="javascript:void(0)"><i class="fa fa-tag"></i><span>Mantenimientos</span></a>
                                    <ul class="collapse">
                                        <li><a href=""><i class="fa fa-cubes"></i> Categorias</a></li>
                                        <li><a href=""><i class="fa fa-archive"></i> Productos</a></li>
                                        <li><a href=""><i class="fa ti-user"></i> Usuarios</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">
                <!-- header area start -->
                <div class="header-area">
                    <div class="row align-items-center">
                        <!-- nav and search button -->
                        <div class="col-4 clearfix">
                            <div class="nav-btn pull-left" style="margin-top: 0px">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <!-- profile info & task notification -->
                        <div class="col-8 clearfix">
                            <ul class="notification-area pull-right">
                                <li>
                                    <a href="">
                                        Cerrar Sessión
                                        <i class="fa fa-sign-out" aria-hidden="true"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Aqui se agrega el contenido de la pagina-->
                <div class="main-content-inner">
                    <div class="row" style="padding-top: 9px">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h6>Categorias</h6>

                                    <form id="FrmCategoria">

                                        <div class="row mt-3">
                                            <div class="form-group col-sm-9 col-12">
                                                <input type="text" id="txtNombreCategoria" name="txtNombreCategoria" class="form-control formcontrol-sm" placeholder="NOMBRE">  
                                            </div>
                                            <div class="col-sm-3 col-12">
                                                <button type="submit" id="btnBuscarCategoria" class="btn btn-primary mb-3 btn-sm mr-2"><i class="fa fa-search" aria-hidden="true"></i>Buscar</button>
                                                <button type="button" id="btnAbrirNCategoria" class="btn btn-primary mb-3 btn-sm"><i class="fa fa-plus-square" aria-hidden="true"></i>+</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered table-striped">
                                                    <thead class="bg-light">
                                                        <tr>
                                                            <th>Nombre</th>
                                                            <th style="width:10%">Acciones</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbodyCategoria">

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 col-12">
                                            <select name="sizePageCategoria" id="sizePageCategoria" class="custom-select custom-select-sm form-control form-control-sm">
                                                <option value="10">10</option>
                                                <option value="25">25</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                            </select> 
                                        </div>
                                        <div class="col-md-10 col-12">
                                            <nav>
                                                <ul id="paginationCategoria" class="pagination pagination-sm justify-content-end">
                                                </ul>

                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- main content area end -->
                <!-- footer area start-->
                <footer>
                    <div class="footer-area">
                        <p>© Copyright 2020 Mikoli Servicios Integrales <a href="https://www.mikoli.com.mx">Mikoli</a>.</p>
                    </div>
                </footer>
                <!-- footer area end-->
            </div>
            <!-- page container area end -->
            <!-- jquery latest version -->
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/vendor/jquery-2.2.4.min.js"></script>
            <!-- bootstrap 4 js -->
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/popper.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/bootstrap.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/owl.carousel.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/metisMenu.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/jquery.slimscroll.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/jquery.slicknav.min.js"></script>

            <!-- start chart js -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
            <!-- start highcharts js -->
            <script src="https://code.highcharts.com/highcharts.js"></script>
            <!-- start zingchart js -->
            <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
            <script>
                zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
                ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
            </script>
            <!-- page container area end -->
            <!-- jquery latest version -->
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/vendor/jquery-2.2.4.min.js"></script>
            <!-- bootstrap 4 js -->
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/popper.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/bootstrap.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/metisMenu.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/jquery.slimscroll.min.js"></script>
            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/jquery.slicknav.min.js"></script>

            <script src="<%out.print(getServletContext().getContextPath());%>/assets/js/scripts.js"></script>
    </body>

</html>