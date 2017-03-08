<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link href="${proPath}/resource/Css/home.css" rel="stylesheet" type="text/css" />
    <link href="${proPath}/resource/bootstrap.css" rel="stylesheet" type="text/css" />
   
</head>
<body style="background-image:url(${proPath}/resource/Images/bg.jpg)">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="banner-show" id="js_ban_content">
            <div class="cell">
                <div class="con">
                    <div style="padding: 10px 0 0 20px; font-size: x-large;color:white;font-weight:bold">
                        <h2>2017在线投票系统</h2>
                    </div>
                </div>

            </div>

        </div>

        <div class="container">
            <div class="register-box">

                <div class="reg-slogan">
                    用户登录
                    <div style="text-align: right; margin-right: 20px">
                        <a href="${proPath}/register.jsp">注册</a>
                    </div>
                </div>


                <div class="reg-form" id="js-form-mobile">
                    <table style="width: 390px; color: #000000;">
                        <tr>
                            <td style="width: 60px" class="text-size">用户名</td>
                            <td style="width: 200px">
                            	<input type="text" name="username" class="text" style="width:191"/> 
                            <td style="width: 30px">
                            </td>
                        </tr>
                        <tr>
                            <td class="text-size">密 &nbsp;码</td>
                            <td><input type="text" name="password" class="text" style="width:191"/> </td>
                            <td></td>
                        </tr>
                   
                        <tr>
                            <td></td>
                            <td>

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="25px"
                                            Width="191px" ImageUrl="~/ValidateNum.aspx" />

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="hyz1" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td style="width: 40px">
                                <asp:LinkButton ID="hyz1" Width="50px" OnClick="hyz_Click" CssClass="hyz" ValidationGroup="hyz1" runat="server">换一张</asp:LinkButton>
                            </td>
                        </tr>
                      
                        <tr>
                            <td></td>
                            <td colspan="2">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="登录" Width="191px" OnClick="btnLogin_Click" ForeColor="white" /></td>
                        </tr>
                         <tr>
                           
                            <td colspan="3"><center>快快登陆！</center></td>
                
                       </tr>
                        
                         <tr>
                         
                            <td colspan="3"><center>投出你那2017年的第一张票吧！！！</center></td>
                          
                       </tr>
                    </table>
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>

</body>
</html>
