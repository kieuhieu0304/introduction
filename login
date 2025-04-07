<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="dkdn.css">
</head>

<body>
    <div class="container">
        <h1>Đăng Nhập</h1>
        <form id="login">
            <label for="loginUsername">Tên đăng nhập:</label>
            <input type="text" id="loginUsername" name="loginUsername" placeholder="Nhập tên đăng nhập" required>

            <label for="loginPassword">Mật khẩu:</label>
            <input type="password" id="loginPassword" name="loginPassword" placeholder="Nhập mật khẩu" required>

            <div class="wrap">
                <button type="submit">Đăng Nhập</button>
            </div>
        </form>
        <p>Chưa có tài khoản? <a href="đăng ký.html">Đăng ký ngay</a></p>
    </div>

    <script>
        document.getElementById("login").addEventListener("submit", function (event) {
            event.preventDefault();

            let username = document.getElementById("loginUsername").value.trim();
            let password = document.getElementById("loginPassword").value.trim();

            let storedUsername = localStorage.getItem("registeredUsername");
            let storedPassword = localStorage.getItem("registeredPassword");

            if (!username || !password) {
                alert("Vui lòng nhập đầy đủ thông tin!");
                return;
            }

            if (username === storedUsername && password === storedPassword) {
                alert("Đăng nhập thành công!");
                localStorage.setItem("isLoggedIn", "true");
                window.location.href = "index.html";
            } else {
                alert("Tên đăng nhập hoặc mật khẩu không chính xác!");
            }
        });
    </script>
</body>

</html>
