<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link href="${proPath}/resource/Css/home.css" rel="stylesheet" type="text/css" />
    <link href="${proPath}/resource/Css/bootstrap.css" rel="stylesheet" type="text/css" />
   
</head>
<body style="background-image:url(${proPath}/resource/Images/bg.jpg)">
    <form id="form1">
        <div class="banner-show" id="js_ban_content">
            <div class="cell">
                <div class="con">
                    <div style="padding: 10px 0 0 20px; font-size: x-large;font-weight:bold;color:white">
                        <h2>2017在线投票系统</h2>
                    </div>
                </div>
            </div>

        </div>

        <div class="container">
            <div class="register-box">
                <div class="reg-slogan">
                    用户注册 <div style="text-align:right;margin-right:20px">
                    <a href="${proPath}/login.jsp">登录</a>
                        </div>
                
                </div>
                

                <div class="reg-form" id="js-form-mobile">
                    <table style="width: 450px; color: #000000;">
                        <tr>
                            <td style="width: 70px" class="text-size">用户名</td>
                            <td style="width: 220px">
                                <input type="text" name="name" class="text" style="width:191"/>
                            </td>
                            <td style="width: 100px"></td>

                        </tr>
                        <tr>
                            <td class="text-size">密 &nbsp;码</td>
                            <td>
                                <input type="text" name="password" class="text" style="width:191"/></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="text-size">确认密码</td>
                            <td>
                                <input type="text" id="reusername" class="text" style="width:191"/>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-size">Email</td>
                            <td>
                               <input type="text" name="email" class="text" style="width:191"/>
                            </td>
                            <td>
                            </td>
                        </tr>


                      
                        <tr>
                            <td></td>
                            <td colspan="2">
                            <input type="submit" id="btnOK" OnClick="btnOk_Click"  class="btn btn-primary" value="注册" style="width:191px">
  
                        </tr>
                          <tr>
                           
                            <td colspan="2"><center>快快注册！</center></td>
                
                       </tr>
                        
                         <tr>
                         
                            <td colspan="2"><center>投出你那2017年的第一张票吧！！！</center></td>
                          
                       </tr>
                    </table>

                </div>
            </div>
        </div>
    </form>

      <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <script>
        $("#hyz").click(function () {

            $("#validateImage").attr("src", "ValidateNum.aspx?value=" + parseInt(Date.now()));

        })

        $('#txtPwd').keyup(function (e) {
            var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
            var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
            var enoughRegex = new RegExp("(?=.{0,}).*", "g");
            if (false == enoughRegex.test($(this).val())) {
                $('#passstrength').html('');
            } else if (strongRegex.test($(this).val())) {
                $('#passstrength').css("color", "blue");
                $('#passstrength').css("font-size", "large");
                $('#passstrength').html('强');
            } else if (mediumRegex.test($(this).val())) {
                $('#passstrength').css("color", 'gray');
                $('#passstrength').css("font-size", "large");
                $('#passstrength').html('中');
            } else {
                $('#passstrength').css("color", 'red');
                $('#passstrength').css("font-size", "large");
                $('#passstrength').html('弱');
            }
            return true;
        });
    </script>
</body>
</html>

