<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 50px;
        }

        h2 {
            margin-bottom: 30px;
            font-weight: bold;
            color: #333;
        }

        .form-group label {
            font-weight: bold;
            color: #555;
        }

        .form-control {
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            border-radius: 5px;
            padding: 10px 20px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .form-text {
            font-size: 0.875rem;
            color: #888;
        }

        .input-icon {
            position: absolute;
            right: 10px;
            top: calc(50% - 12px);
            pointer-events: none;
            color: #888;
        }

        .form-group.position-relative {
            position: relative;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center">Registration Form</h2>
    <form id="employeeForm" onsubmit="return validateForm()" action="next" method="post" >
        <div class="form-group position-relative">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="ename" placeholder="Enter username" required>
            <i class="fa fa-user input-icon"></i>
        </div>
        <div class="form-group position-relative">
            <label for="email">Email ID:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
            <i class="fa fa-envelope input-icon"></i>

        </div>
        <div class="form-group position-relative">
            <label for="id">Employee ID:</label>
            <input type="text" class="form-control" id="id" name="emp_id" placeholder="Enter employee ID" required>
            <i class="fa fa-id-badge input-icon"></i>
        </div>
        <div class="form-group position-relative">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="pass" placeholder="Enter password" required>
            <i class="fa fa-lock input-icon"></i>
            <small class="form-text text-muted">Use at least 8 characters.</small>
        </div>
        <div class="form-group position-relative">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" class="form-control" id="confirmPassword" name="cpass" placeholder="Confirm password" required>
            <i class="fa fa-lock input-icon"></i>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>
