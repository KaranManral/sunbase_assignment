window.onload = () => {
    if (window.location.pathname != "/login")
        if (!sessionStorage.getItem("flag"))
            window.location.href = "/login";
        else if (sessionStorage.getItem("flag") == "false")
            window.location.href = "/login";
}

$(document).ready(() => {
    let loggedIn = sessionStorage.getItem("flag");
    if (loggedIn == "true") {
        $("#add_customer").removeClass("disabled");
        $("#manage_customer").removeClass("disabled");
        $("#login").text("Logout");
        $("#login").on("click", (e) => {
            e.preventDefault();
            sessionStorage.setItem("flag", "false")
            sessionStorage.setItem("bearer_token", "")
            $("#login").text("Login").off("click");
            window.location.href = "/";
        })
    }
    else {
        $("#add_customer").addClass("disabled");
        $("#manage_customer").addClass("disabled");
    }
    $("#login_form").on("submit", (e) => {
        e.preventDefault();
        let email = $("#email").val();
        let pwd = $("#pwd").val();
        if (email == "" || pwd == "") {
            alert("Email or Password cannot be blank");
            return false;
        }
        else {
            $.ajax({
                url: "/api/proxy?url=https://qa2.sunbasedata.com/sunbase/portal/api/assignment_auth.jsp&cmd=&uuid=",
                type: "post",
                crossDomain: true,
                dataType: "json",
                contentType: "text/plain",
                headers: { "Content-Type": "text/plain" },
                async: true,
                data: JSON.stringify({ "login_id": email, "password": pwd }),
                success: function (data) {
                    sessionStorage.setItem("flag", "true");
                    sessionStorage.setItem("bearer_token", data.access_token);
                    $("#add_customer").removeClass("disabled");
                    $("#manage_customer").removeClass("disabled");
                    $("#login").text("Logout");
                    $("#login").on("click", (e) => {
                        e.preventDefault();
                        sessionStorage.setItem("flag", "false")
                        sessionStorage.setItem("bearer_token", "")
                        $("#login").text("Login").off("click");
                        window.location.href = "/";
                    })
                    window.location.href = "/";
                },
                error: function (jqXHR, textStatus, err) {
                    alert("Incorrect Credentials");
                    window.location.reload();
                }
            })
            return true;
        }
    })
    $("#register_form").on("submit", (e) => {
        e.preventDefault();
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
            $.ajax({
                url: "/api/proxy?url=https://qa2.sunbasedata.com/sunbase/portal/api/assignment.jsp&cmd=create&uuid=",
                type: "post",
                crossDomain: true,
                dataType: "text",
                contentType: "application/json",
                async: true,
                headers: {
                    "Authorization": `Bearer ${sessionStorage.getItem("bearer_token")}`,
                    "Accept": "*/*",
                },
                data: JSON.stringify(obj),
                statusCode: {
                    201: (data, textStatus, jqXHR) => {
                        alert("Added User Successfully");
                        window.location.reload();
                    },
                    400: (data, textStatus, jqXHR) => {
                        alert("First Name or Last Name is missing");
                        window.location.reload();
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
            return true;
        }
    })
});

