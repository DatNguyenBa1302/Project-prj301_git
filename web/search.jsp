<%-- 
    Document   : search
    Created on : Jan 24, 2024, 10:03:23 AM
    Author     : User
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utils.DBUtils"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Search</title>
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="./themify-icons/themify-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>

        <div class="container">
            <div class="row mt-2">
                <div class="col-lg-5">
                    <nav class="navbar navbar-expand-lg bg-white justify-content-center">
                        <!-- <div style="background-color: red;"></div> -->
                        <a class="navbar-brand px-5" href="#">
                            <img src="https://dummyimage.com/900x400/ced4da/6c757d.jgp" alt="..." width="40" height="34">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav_form navbar-nav mb-2 mb-lg-0 justify-content-between fw-bold fs-5 text-nowrap">
                                <li class="nav-item"><a class="nav-link" href="sceenHomeStudent.jsp">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="sceenDashboard.jsp" >Dashboard</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" >My courses</a>
                                    <ul class="dropdown-menu">
                                        <li class="dropend">
                                            <a class="dropdown-item dropdown-toggle fw-medium" data-bs-toggle="dropdown" href="#">In progress</a>
                                            <ul class="dropdown-menu " style="min-width: 20rem;">
                                                <li><a href="#" class="dropdown-item fw-medium">Item 1</a></li>
                                                <li><a href="#" class="dropdown-item fw-medium">Item 1</a></li>
                                                <li><a href="#" class="dropdown-item fw-medium">Item 1</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-5 py-2">
                    <div style="background-color: black;"></div>
                    <form class="d-flex" action="">
                        <div class="input-group">
                            <input type="text" class="form-control rounded-start-pill mt-2 bg-body-secondary"
                                   placeholder="Tim kiem">
                            <button class="btn btn-outline-secondary rounded-end-pill mt-2" type="button"
                                    id="button-addon2"><i class="ti-search fw-bolder"></i></button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-2 py-2">
                    <nav class="navbar " style="display: inline-block;">
                        <div class=" position-relative" style="display: inline-block;">
                            <img style="width: 40px;" class="rounded-circle " src="./img/gumbal.jpg" alt="..."
                                 data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar"
                                 aria-label="Toggle navigation">
                            <span
                                class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">99+</span>
                        </div>
                        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                             aria-labelledby="offcanvasNavbarLabel">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Email cua nguoi dung</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                        aria-label="Close"></button>
                            </div>
                            <div class="offcanvas-body">
                                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                    <li class="nav-item">
                                        <a class="nav-link active fs-5" aria-current="page" href="#">Thong tin tai khoan</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link fs-5" href="#">Chinh sua thong tin tai khoan</a>
                                    </li>
                                </ul>
                                <div class="d-grid col-12 mt-5">
                                    <button class="btn btn-primary" type="button">Dang xuat</button>
                                </div>
                            </div>
                        </div>
                    </nav>

                </div>
            </div>
        </div>
        <!-- Ket thuc nav -->

        <!-- Bat dau body -->
        <div class="bg-body-tertiary pt-3">
            <div class="container">
                <!--                 String searching = (String) request.getAttribute("searching");
                                    try {
                                        Connection con = DBUtils.getConnection();
                
                                        String sql = "SELECT COUNT(*) \"TotalClasses\"  FROM Classes WHERE name like ? ";
                
                                        PreparedStatement stmt = con.prepareStatement(sql);
                
                                        stmt.setString(1, "%" + searching + "%");
                
                                        ResultSet rs = stmt.executeQuery();
                
                                        int totalClass = rs.getInt("TotalClasses");-->

                <div class="row">
                    <h3 class="fw-medium mb-1">Search results:<!--= totalClass%> 
                        <!--                          } catch (SQLException e) {
                                                        System.out.println("Wrong sql statement");
                                                        e.printStackTrace();
                                                 } -->
                    </h3>
                </div>
                <div class="row mt-3 mb-4">
                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
<!--                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>-->
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Row thu hai -->
                <div class="row mt-3 mb-4">
                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-4">
                        <a href="#" class="card rounded-4 text-decoration-none" style="min-height: 13rem;">
                            <div class="card-body">
                                <h5 class="card-title fs-3">PRJ301</h5>
                                <span class="badge rounded-pill text-bg-secondary my-3 me-3">19 cau hoi</span>
                                <span class="badge rounded-pill text-bg-secondary my-3">10 thanh vien</span>
                                <div class="my-2">
                                    <img class="rounded-circle" style="width: 35px;" src="./img/gumbal.jpg" alt="">
                                    <p class="card-text fs-5 fw-bolder d-inline-block">Ten nguoi tao</p>
                                    <span class="badge rounded-pill text-bg-secondary ms-2">Giao vien</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Ket thuc row thu 2 -->
            </div>


            <!-- Bat dau footer -->
            <div class="border-top border-secondary-subtle mt-5 mb-2"></div>
            <footer class="container my-3 " style="height: 5rem;">
                <div class="row">
                    <div class="col-lg-12 fs-2 text-center">
                        <a class="text-decoration-none text-dark px-2" href=""><i class="ti-facebook"></i></a>
                        <a class="text-decoration-none text-dark px-2" href=""><i class="ti-twitter"></i></a>
                        <a class="text-decoration-none text-dark px-2" href=""><i class="ti-youtube"></i></a>
                        <a class="text-decoration-none text-dark px-2" href=""><i class="ti-instagram"></i></a>
                        <p class=" text-center fs-4 text-muted ">Copyright &copy; Bai tap nhom</p>
                    </div>

                </div>
            </footer>
            <!-- Ket thuc footer -->
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    </body>

</html>