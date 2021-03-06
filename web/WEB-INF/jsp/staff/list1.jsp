<%-- 
    Document   : report
    Created on : Feb 21, 2017, 11:18:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <style>
            .container{
                width:1500px;
                float: left;
            }
            header{
                width: 100%;
                height: 50px;
            }
            p{
                font-size: 50px;
                font-weight: 900;
                color: white;
                text-shadow: 0 0 20px orangered;
                float: left;
                margin-left: 100px;
            }
            .menu ul {
                width: 720px;
                height: 50px;
                float: left;
                margin-top: 30px;
                margin-left: 120px;
                padding-bottom: 20px;
                text-align: center;
                font-family: Raleway;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
                list-style-type: none;
            }
            .menu #ul-1 {
                background: #3fa46a;
            }
            .link-1 {
                float: left;
                transition: 0.3s ease;
                background: #3fa46a;
                color: #ffffff;
                font-size: 20px;
                text-decoration: none;
                border-top: 4px solid #3fa46a;
                border-bottom: 4px solid #3fa46a;
                padding: 20px 0;
                margin: 0 20px;
            }
            .link-1:hover {
                border-top: 4px solid #ffffff;
                border-bottom: 4px solid #ffffff;
                padding: 6px 0;
            }
            .menu a{
                color: white;
                text-decoration: none;
            }
            .login{
                float: right;
                margin-right: 80px;
                margin-top: 50px; 
            }
            .login a{
                text-decoration: none;
                font-size: 20px;
                color: whitesmoke;
                font-weight: 900;
                text-align: center;
            }
            #content{
                width: 100%;
                float: left;
            }
            #content h2{
                text-align: center;
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box;
                color: #1eacff;
                font-size: 50px;
                font-weight: 900;
                -o-text-overflow: ellipsis;
                text-overflow: ellipsis;
                text-shadow: 2px 2px 2px rgba(0,0,0,0.5) ;
            }
            #content table{
                width: 100%;
                text-align: center;
            }
            #content a{
                width: 100%;
                color: black;
                margin-left: 1200px;
                text-decoration: none;
                font-size: 30px;
                font-weight: 900;
            }
            #content a:hover{
                color: #018dc4;
            }
            .insert{
                float: right;
                text-decoration: none;
                font-size: 30px;
                margin-right: 30px;
            }
            .table-fill {
                background: white;
                border-radius:3px;
                border-collapse: collapse;
                margin-left: 250px;
                max-width: 500px;
                padding:5px;
                width: 100%;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
                animation: float 5s infinite;
            }

            th {
                color:#D5DDE5;;
                background:#1b1e24;
                border-bottom:4px solid #9ea7af;
                border-right: 1px solid #343a45;
                font-size:23px;
                font-weight: 100;
                padding:24px;
                text-align:left;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                vertical-align:middle;
            }

            th:first-child {
                border-top-left-radius:3px;
            }

            th:last-child {
                border-top-right-radius:3px;
                border-right:none;
            }

            tr {
                border-top: 1px solid #C1C3D1;
                border-bottom-: 1px solid #C1C3D1;
                color:#666B85;
                font-size:16px;
                font-weight:normal;
                text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);

            }

            tr td a{
                text-decoration: none;
                color:#666B85;
            }
            tr td a:hover{
                color:#FFFFFF;
            }
            tr:hover td {
                background:#4E5066;
                color:#FFFFFF;
                border-top: 1px solid #22262e;
                border-bottom: 1px solid #22262e;
            }

            tr:first-child {
                border-top:none;
            }

            tr:last-child {
                border-bottom:none;
            }

            tr:nth-child(odd) td {
                background:#EBEBEB;
            }

            tr:nth-child(odd):hover td {
                background:#4E5066;
            }

            tr:last-child td:first-child {
                border-bottom-left-radius:3px;
            }

            tr:last-child td:last-child {
                border-bottom-right-radius:3px;
            }

            td {
                background:#FFFFFF;
                padding:20px;
                text-align:left;
                vertical-align:middle;
                font-weight:300;
                font-size:18px;
                text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
                border-right: 1px solid #C1C3D1;
            }

            td:last-child {
                border-right: 0px;
            }

            th.text-left {
                text-align: center;
            }
        </style>
    </head>
    <body style="background-image: url('${pageContext.servletContext.contextPath}/img/login.jpg')">
        <div class="container">
            <header>
                <p>ABC Group</p>
                <div class="menu">
                    <ul id="ul-1">
                        <li class="link-1"><a href="index1.htm">Trang chủ</a></li>
                        <li class="link-1"><a href="depart/list.htm">Phòng ban</a></li>
                        <li class="link-1"><a href="staff/list.htm">Nhân viên</a></li>
                        <li class="link-1"><a href="staff/list1.htm">Hồ sơ</a></li>
                    </ul>
                </div>
                <div class="login">
                    <a href="user/login.htm">Đăng nhập</a>
                </div>
            </header>
            <div id="content">
                <h2>Thành tích và kỷ luật</h2>
                <table border="1"> 
                    <tr>  
                        <th>Mã NV</th> 
                        <th>Tổng thành tích</th> 
                        <th>Tổng kỷ luật</th> 
                        <th>Tổng kết</th> 
                    </tr> 
                    <c:forEach var="a" items="${arrays}"> 
                        <tr> 
                            <td>${a[0]}</td> 
                            <td>${a[1] }</td> 
                            <td>${a[2]}</td>
                            <td>${a[1] - a[2]}</td> 
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

    </body>
</html>
