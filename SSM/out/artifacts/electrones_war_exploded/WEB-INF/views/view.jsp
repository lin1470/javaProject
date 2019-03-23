<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="com.ascent.util.*,com.ascent.bean.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Acsent电子政务系统</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">

	</head>

	<body bgcolor="#FFFFFF" text="#000000" topmargin="0" background="<%=path%>/IMAGES/dian_09.gif">
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td>
      <table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td colspan="4"><img src="<%=path%>/IMAGES/01.gif" width="780" height="21" /></td>
        </tr>
        <tr>
          <td bgcolor="2B70E7" height="40" width="4"><div align="center"><img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1" /></div></td>
          <td bgcolor="F8F8F8" height="45" width="386"><div align="center"><img src="<%=path%>/IMAGES/02.gif" width="338" height="31" /></div></td>
          <td bgcolor="F8F8F8" height="40" width="386" valign="middle">&nbsp;</td>
          <td bgcolor="2B70E7" height="40" width="4"><img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1" /></td>
        </tr>
      </table></td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td background="<%=path%>/IMAGES/129.gif" height="25">&nbsp; </td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="#FFFFFF"><br>
        <%
            NewsWithBLOBs news = (NewsWithBLOBs) request.getAttribute("news");
        %>
        <c:if test="${!empty news}">
            <table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td height="40">
                        <div align="center"><font size="3"><%=news.getTitle()%></font></div>
                    </td>
                </tr>
                <tr>
                    <td height="30">
                        <p align="center">作者：<%=news.getAuthor()%> 发表时间：<%=news.getPublishtime()%></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center"><img src="<%=path%>/IMAGES/134.gif" width="634" height="4"></div>
                    </td>
                </tr>
                <tr>
                    <td>　　<br>
                        <br>
                        <br>
                        <%
                            ChangeHtmlCode che = new ChangeHtmlCode();
                            String str = che.HTMLEncode(news.getContent());
                        %>
                        <span class="p6">　　    <%=str%></span>
                        <p></p>
                        <p> </p>
                    </td>
                </tr>
            </table>
        </c:if>
      <br>
      <table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td>
            <div align="center">：：<a href="javascript:window.close()"><font color="#FF0000">关闭窗口</font></a>：：</div>
          </td>
        </tr>
      </table>
      <br>
      <br>
    </td>
  </tr>
</table>
<br>
<br>
</body>
</html>
