<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment : Add Customer</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        input[type=text],input[type=email],input[type=tel]{
            width: 100%;
            padding: 0.8rem;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="./">Assignment</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="position: absolute;right: 5vw;">
                    <li class="nav-item">
                        <a class="nav-link active" href="./add_customer" id="add_customer">Add Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./manage_customer" id="manage_customer">Manage Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./login" id="login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <form method="post" class="container px-5" method="post" target="#" id="register_form" style="margin-top: 10vh;border: 2px solid gray;border-radius: 12px;">
            <div class="row bg-primary my-5">
                <div class="col text-center" style="color: white;font-size: 2rem;">Add Customer</div>
            </div>
            <div class="row my-4">
                <div class="col-6">
                    <input type="text" name="fname" id="fname" placeholder="First Name" style="border-radius: 5px;border: 1px solid gray;" required>
                </div>
                <div class="col-6">
                    <input type="text" name="lname" id="lname" placeholder="Last Name" style="border-radius: 5px;border: 1px solid gray;" required>
                </div>
            </div>
            <div class="row my-4">
                <div class="col-6">
                    <input type="text" name="street" id="street" placeholder="Street" style="border-radius: 5px;border: 1px solid gray;">
                </div>
                <div class="col-6">
                    <input type="text" name="address" id="address" placeholder="Address" style="border-radius: 5px;border: 1px solid gray;">
                </div>
            </div>
            <div class="row my-4">
                <div class="col-6">
                    <input type="text" name="city" id="city" placeholder="City" style="border-radius: 5px;border: 1px solid gray;">
                </div>
                <div class="col-6">
                    <input type="text" name="state" id="state" placeholder="State" style="border-radius: 5px;border: 1px solid gray;">
                </div>
            </div>
            <div class="row my-4">
                <div class="col-6">
                    <input type="email" name="addEmail" id="addEmail" placeholder="Email" style="border-radius: 5px;border: 1px solid gray;">
                </div>
                <div class="col-6">
                    <input type="tel" name="phone" id="phone" placeholder="Phone" style="border-radius: 5px;border: 1px solid gray;">
                </div>
            </div>
            <div class="row my-5">
                <div class="col text-center"><input class="btn btn-success" type="submit" id="submit" value="Submit"></div>
            </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.js"
        integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
        <script src="./js/index.js"></script>
</body>
</html>