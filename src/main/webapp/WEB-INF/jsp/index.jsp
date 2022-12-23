<%@ page contentType="text/html;charset=UTF-8"  language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/> -->
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/js.cookie.js"></script>
    <style>
        #login{
           height: 38%;
            width: 25%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
            display: block;
            position: center;
        }

        .form-group {
            margin-bottom: 0;
        }
        * {
            padding: 3px;;
            margin:0;
        }
    </style>
</head>
<body background="img/library.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<c:if test="${!empty error}">
    <script>
            alert("${error}");
            window.location.href="login.html";
</script>
</c:if>
<div></div>
<h2 style="text-align: center; color: rgba(19, 71, 5, 0.953); font-family: 'STXingkai'; font-size: 500% ;margin-top: 100px;">双鸭山大学图书馆</h2>

<div class="panel panel-default" id="login" style="background-color: rgba(10, 10, 10, 0.605)">
    <div class="panel-heading" style="background-color: rgba(10, 10, 10, 0)">
        <h3 class="panel-title" style="color: rgb(255, 255, 255)">请登录</h3>
    </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="id" style="color: rgb(255, 255, 255)">账号</label>
            <input type="text" class="form-control" id="id" placeholder="请输入账号">
        </div>
        <div class="form-group">
            <label for="passwd" style="color: rgb(255, 255, 255)">密码</label>
            <input type="password" class="form-control" id="passwd" placeholder="请输入密码">
        </div>

        <p style="text-align: right;color: rgb(255, 255, 255);position: absolute" id="info"></p><br/>
        <button id="loginButton"  class="btn btn-primary  btn-block" >登录
        </button>
    </div>
</div>
    <script>
        $("#id").keyup(
            function () {
                if(isNaN($("#id").val())){
                    $("#info").text("提示:账号必须为数字");
                }
                else {
                    $("#info").text("");
                }
            }
        )
        // // 记住登录信息
        // function rememberLogin(username, password, checked) {
        //     Cookies.set('loginStatus', {
        //         username: username,
        //         password: password,
        //         remember: checked
        //     }, {expires: 30, path: ''})
        // }
        // // 若选择记住登录信息，则进入页面时设置登录信息
        // function setLoginStatus() {
        //     var loginStatusText = Cookies.get('loginStatus')
        //     if (loginStatusText) {
        //         var loginStatus
        //         try {
        //             loginStatus = JSON.parse(loginStatusText);
        //             $('#id').val(loginStatus.username);
        //             $('#passwd').val(loginStatus.password);
        //             $("#remember").prop('checked',true);
        //         } catch (__) {}
        //     }
        // }

        // // 设置登录信息
        // setLoginStatus();
        $("#loginButton").click(function () {
            var id =$("#id").val();
            var passwd=$("#passwd").val();
            var remember=$("#remember").prop('checked');
            if (id == '') {
                $("#info").text("提示:账号不能为空");
            }
            else if( passwd ==''){
                $("#info").text("提示:密码不能为空");
            }
            else if(isNaN( id )){
                $("#info").text("提示:账号必须为数字");
            }
            else {
                $.ajax({
                    type: "POST",
                    url: "api/loginCheck",
                    data: {
                        id:id ,
                        passwd: passwd
                    },
                    dataType: "json",
                    success: function(data) {
                        if (data.stateCode.trim() === "0") {
                            $("#info").text("提示:账号或密码错误！");
                        } else if (data.stateCode.trim() === "1") {
                            $("#info").text("提示:登录成功，跳转中...");
                            window.location.href="admin_main.html";
                        } else if (data.stateCode.trim() === "2") {
                            if(remember){
                                rememberLogin(id,passwd,remember);
                            }else {
                                Cookies.remove('loginStatus');
                            }
                            $("#info").text("提示:登录成功，跳转中...");
                            window.location.href="reader_main.html";

                        }
                    }
                });
            }
        })
    </script>
</div>

</body>
</html>
