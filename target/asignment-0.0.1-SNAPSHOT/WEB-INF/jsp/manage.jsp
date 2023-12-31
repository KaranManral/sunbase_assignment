<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment : Manage Customer</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        input[type=text],
        input[type=email],
        input[type=tel] {
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
                        <a class="nav-link" href="./add_customer" id="add_customer">Add Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./manage_customer" id="manage_customer">Manage
                            Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./login" id="login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid p-5">
        <div class="row my-5">
            <div class="col"><button class="btn btn-primary"
                    onclick="function fun(){window.location.href='./add_customer'}fun()">Add Customer</button>
            </div>
        </div>
        <div class="container px-5" id="customer_list"
            style="margin-top: 10vh;border: 2px solid gray;border-radius: 12px;">
            <!-- Modal -->
            <button type="button" class="btn btn-primary" id="open_modal" data-bs-toggle="modal" data-bs-target="#exampleModalCenter" hidden >
                Launch demo modal
              </button>
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Update User</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="#" method="post" id="update_form">
                            <div class="modal-body">
                                <div class="row my-4">
                                    <div class="col-6">
                                        <input type="text" name="fname" id="fname" placeholder="First Name"
                                            style="border-radius: 5px;border: 1px solid gray;" required>
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="lname" id="lname" placeholder="Last Name"
                                            style="border-radius: 5px;border: 1px solid gray;" required>
                                    </div>
                                </div>
                                <div class="row my-4">
                                    <div class="col-6">
                                        <input type="text" name="street" id="street" placeholder="Street"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="address" id="address" placeholder="Address"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                </div>
                                <div class="row my-4">
                                    <div class="col-6">
                                        <input type="text" name="city" id="city" placeholder="City"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                    <div class="col-6">
                                        <input type="text" name="state" id="state" placeholder="State"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                </div>
                                <div class="row my-4">
                                    <div class="col-6">
                                        <input type="email" name="addEmail" id="addEmail" placeholder="Email"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                    <div class="col-6">
                                        <input type="tel" name="phone" id="phone" placeholder="Phone"
                                            style="border-radius: 5px;border: 1px solid gray;">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="close_update_modal">Close</button>
                                <input class="btn btn-success" type="submit" id="submit" value="Save changes">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- end -->
            <div class="row bg-primary my-5">
                <div class="col text-center" style="color: white;font-size: 2rem;">Customer List</div>
            </div>
            <div class="row my-5">
                <div class="col"><strong>First Name</strong></div>
                <div class="col"><strong>Last Name</strong></div>
                <div class="col"><strong>Address</strong></div>
                <div class="col"><strong>Street</strong></div>
                <div class="col"><strong>City</strong></div>
                <div class="col"><strong>State</strong></div>
                <div class="col"><strong>Email</strong></div>
                <div class="col"><strong>Phone</strong></div>
                <div class="col"><strong>Action</strong></div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.js"
        integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js" integrity="sha512-2rNj2KJ+D8s1ceNasTIex6z4HWyOnEYLVC3FigGOmyQCZc2eBXKgOxQmo3oKLHyfcj53uz4QMsRCWNbLd32Q1g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
        <script src="./js/index.js"></script>
    <script>
        function update_customer(param) {
            $("#open_modal").click();
            let temp = param.id.split("_");
            const uuid = temp[temp.length - 1];
            $("#update_form").on("submit", (e) => {
                e.preventDefault();
                $("#close_update_modal").click();
                const obj = {
                    first_name: $("#fname").val(),
                    last_name: $("#lname").val(),
                    street: $("#street").val(),
                    address: $("#address").val(),
                    city: $("#city").val(),
                    state: $("#state").val(),
                    email: $("#addEmail").val(),
                    phone: $("#phone").val()
                }
                if (obj.first_name == "" || obj.last_name == "" || obj.first_name == undefined || obj.last_name == undefined || obj.first_name == null || obj.last_name == null) {
                    alert("First name and Last name cannot be blank");
                    return false;
                }
                else {
                    let obj_data = JSON.stringify(obj);
                    $.ajax({
                        url: `/api/proxy?url=https://qa2.sunbasedata.com/sunbase/portal/api/assignment.jsp&cmd=update&uuid=\${uuid}`,
                        type: "post",
                        dataType: "text",
                        contentType: "application/json",
                        async: true,
                        headers: {
                            "Authorization": `Bearer \${sessionStorage.getItem("bearer_token")}`,
                            "content-type": "text/plain;charset=UTF-8",
                            "Accept": "*/*",
                        },
                        data: obj_data,
                        statusCode: {
                            200: (data, textStatus, jqXHR) => {
                                alert("User Updated Successfully");
                                $(`#cust_\${uuid}`).replaceWith(`<div class="row my-2" id="cust_\${uuid}">
                    <div class="col">\${obj.first_name}</div>
                <div class="col">\${obj.last_name}</div>
                <div class="col">\${obj.address}</div>
                <div class="col">\${obj.street}</div>
                <div class="col">\${obj.city}</div>
                <div class="col">\${obj.state}</div>
                <div class="col">\${obj.email}</div>
                <div class="col">\${obj.phone}</div>
                <div class="col">
                    <div class="row">
                        <div class="col">
                    <button id="update_cust_\${uuid}" onclick="update_customer(this)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
</svg></button>
                </div>
                <div class="col">
                    <button id="delete_cust_\${uuid}" onclick="delete_customer(this)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
</svg></button>
                </div>
                </div>
                    </div>
            </div>
                                `);
                            },
                            500: (data, textStatus, jqXHR) => {
                                alert("UUID not found");
                                window.location.reload();
                            },
                            401: (data, textStatus, jqXHR) => {
                                alert("Invalid Authorization");
                                window.location.reload();
                            },
                            400: (data, textStatus, jqXHR) => {
                                alert("Body is Empty");
                                window.location.reload();
                            }
                        }
                    })
                }
            })
        }
        function delete_customer(param) {
            let temp = param.id.split("_");
            const uuid = temp[temp.length - 1];
            $.ajax({
                url: `/api/proxy?url=https://qa2.sunbasedata.com/sunbase/portal/api/assignment.jsp&cmd=delete&uuid=\${uuid}`,
                type: "post",
                dataType: "text",
                async: true,
                headers: {
                    "Authorization": `Bearer \${sessionStorage.getItem("bearer_token")}`,
                    "Accept": "*/*",
                },
                data: JSON.stringify({}),
                statusCode: {
                    200: (data, textStatus, jqXHR) => {
                        alert("Deleted User Successfully");
                        $(`#cust_\${uuid}`).remove();
                    },
                    400: (data, textStatus, jqXHR) => {
                        alert("UUID not found");
                        window.location.reload();
                    },
                    401: (data, textStatus, jqXHR) => {
                        alert("Invalid Authorization");
                        window.location.reload();
                    },
                    500: (data, textStatus, jqXHR) => {
                        alert("Error, Not Deleted");
                        window.location.reload();
                    }
                }
            })
        }
        $(document).ready(() => {
            $.ajax({
                url: "/api/proxy?url=https://qa2.sunbasedata.com/sunbase/portal/api/assignment.jsp&cmd=get_customer_list",
                type: "get",
                dataType: "json",
                async: true,
                headers: {
                    "Authorization": `Bearer \${sessionStorage.getItem("bearer_token")}`,
                    "Accept": "*/*",
                },
                statusCode: {
                    200: (data, textStatus, jqXHR) => {
                        data.map((x, i) => {
                            $("#customer_list").append(`<div class="row my-2" id="cust_\${x.uuid}">
                    <div class="col">\${x.first_name}</div>
                <div class="col">\${x.last_name}</div>
                <div class="col">\${x.address}</div>
                <div class="col">\${x.street}</div>
                <div class="col">\${x.city}</div>
                <div class="col">\${x.state}</div>
                <div class="col">\${x.email}</div>
                <div class="col">\${x.phone}</div>
                <div class="col">
                    <div class="row">
                        <div class="col">
                    <button id="update_cust_\${x.uuid}" onclick="update_customer(this)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
  <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
</svg></button>
                </div>
                <div class="col">
                    <button id="delete_cust_\${x.uuid}" onclick="delete_customer(this)"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
</svg></button>
                </div>
                </div>
                    </div>
            </div>`)
                        });
                    },
                    401: (data, textStatus, jqXHR) => {
                        alert("Invalid Authorization");
                        window.location.reload();
                    },
                    500: (data, textStatus, jqXHR) => {
                        alert("Invalid Command");
                        window.location.reload();
                    }
                }
            })
        })
    </script>
</body>

</html>