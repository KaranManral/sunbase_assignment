<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment : Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
                        <a class="nav-link disabled" href="./add_customer" id="add_customer">Add Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="./manage_customer" id="manage_customer">Manage Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./login" id="login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <form method="post" class="container px-5" id="login_form" style="width: 400px;height: 400px;margin-top: 20vh;border: 2px solid gray;border-radius: 12px;">
            <div class="row bg-primary my-5">
                <div class="col text-center" style="color: white;font-size: 2rem;">Login</div>
            </div>
            <div class="row my-4">
                <input type="email" name="email" id="email" placeholder="Login Id" style="border-radius: 5px;border: 1px solid gray;padding: 0.8rem;" required>
            </div>
            <div class="row my-4">
                <input type="password" name="pwd" id="pwd" placeholder="Password" style="border-radius: 5px;border: 1px solid gray;padding: 0.8rem;" required>
            </div>
            <div class="row my-5">
                <div class="col text-center"><input class="btn btn-success" type="submit" id="submit" value="Login"></div>
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