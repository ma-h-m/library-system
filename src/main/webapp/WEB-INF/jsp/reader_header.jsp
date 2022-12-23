<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
<script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script> -->
<nav style="position:fixed; height: 6%; width: 100%; background-color: rgba(52, 52, 52, 0.244)" class="navbar fixed-top navbar-expand-sm bg-dark navbar-dark"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 0%;margin-right: 1%">
            <a class="navbar-brand" href="reader_main.html" style="font-family: STXingkai; font-size: 250%; color: rgba(19, 71, 5, 0.953)">双鸭山大学图书馆</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active">
                    <a href="reader_books.html">
                        图书查询
                    </a>
                </li>
                <li >
                    <a href="mylend.html" >
                        我的借还
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        账户管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="reader_info.html" >个人信息</a></li>
                        <li class="divider"></li>
                        <li ><a href="reader_repasswd.html" >密码修改</a></li>
                    </ul>
                </li>     

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a style="color: white">${readercard.name}</a></li>
                <li><a href="login.html">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
