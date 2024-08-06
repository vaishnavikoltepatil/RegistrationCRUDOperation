<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>

        html, body, .intro {
            height: 100%;
        }

        table td, table th {
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }

        .card {
            border-radius: .5rem;
        }

        .table-scroll {
            border-radius: .5rem;
        }

        thead {
            top: 0;
            position: sticky;
        }
    </style>
</head>
<body>
<section class="intro">
    <div class="bg-image h-100" style="background-color: #f5f7fa;">
        <div class="mask d-flex align-items-center h-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="card shadow-2-strong">
                            <div class="card-body p-0">
                                <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true" style="position: relative; height: 700px">
                                    <table class="table table-dark mb-0">
                                        <thead style="background-color: #393939;">
                                        <tr class="text-uppercase text-success">
                                            <th scope="col">Id</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Employee ID</th>
                                            <th scope="col">Password</th>
                                            <th scope="col">Confirm-Password</th>
                                            <th>Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                       <c:forEach items="${mm}" var="e">
                                        <tr>
                                            <td>${e.id}</td>
                                            <td>${e.ename}</td>
                                            <td>${e.email}</td>
                                            <td>${e.emp_id}</td>
                                            <td>${e.pass}</td>
                                            <td>${e.cpass}</td>
                                           <td><a href="edit/${e.id}"style="color: white;"><i class="fas fa-edit"></i></a> |
                                            <a href="del/${e.id}" style="color: white;"><i class='fas fa-trash'></i></a>
                                           </td>
                                        </tr>
                                       </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
