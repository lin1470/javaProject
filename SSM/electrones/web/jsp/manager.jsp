<%@ page language="java" import="com.ascent.bean.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
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
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">
	

  </head>
  <body bgcolor="#FFFFFF" text="#000000" topmargin="0">
  	<%
    	List list = (List)request.getAttribute("auth");
    %>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
      <%--是否有能包含这么一个页面才行.--%>
    <td><%@ include file="/top.jsp" %></td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td width="11" valign="top" background="<%=path%>/IMAGES/118.gif">&nbsp; </td>
    <td width="191" valign="top" background="<%=path%>/IMAGES/119.gif">
      <div align="center"><br>
        <table width="172" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr> 
            <td><img src="<%=path%>/IMAGES/55.gif" width="172" height="26"></td>
          </tr>
        </table>
        <table width="172" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr> 
            <td bgcolor="028BD7" width="1"><img src="<%=path%>/IMAGES/dian_07.gif" width="1" height="1"></td>
            <td width="170" bgcolor="E6F6FF"> 
              <table width="170" border="0" cellspacing="2" cellpadding="2" height="300">
                <tr>
                  <td valign="top">
                  	<table border="0">
                  	  <%
                  	  	String tip = "";
                  	  	String tsp = "";
                  	  	String url = "";
                  	  	String typ = "";
                  	  	for(int i=0;i<list.size();i++){
                  	  	  Authorization aion = (Authorization)list.get(i);
                  	  	  if(aion.getColumnid()==1){
                  	  	    tip = "头版头条";
                  	  	    typ = "1";
                  	  	  } else {
                  	  	  	tip = "综合新闻";
                  	  	  	typ = "2";
                  	  	  }
                  	  	  if(aion.getAuth()==1){
                  	  	  	tsp = "管理";
                  	  	  	url = path+"/jsp/issue.jsp?typ="+typ;
                  	  	  } else {
                  	  	  	tsp = "审核";
                  	  	  	url = path+"/auditingnewsAction.action?typ="+typ;
                  	  	  }
                  	  %>
                  	      <tr> 
                            <td width="23" height="30"> 
                              <img src="<%=path%>/IMAGES/59.gif" width="10" height="10">
                            </td>
                            <td>
                            	<a href="<%=url%>"><%=tip+tsp%></a>
                            </td>
                          </tr>
                  	  <%
                  	    }
                  	  %>
                  	</table>
                  </td>
                </tr>
              </table>
            </td>
            <td bgcolor="028BD7" width="1"><img src="<%=path%>/IMAGES/dian_07.gif" width="1" height="1"></td>
          </tr>
        </table>
        <table width="172" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr> 
            <td><img src="<%=path%>/IMAGES/56.gif" width="172" height="9"></td>
          </tr>
        </table>
        
        <br>
        <br>
      </div>
    </td>
    <td width="566" valign="top">
      <table width="564" border="0" cellspacing="2" cellpadding="2">
        <tr> 
          <td height="100" valign="bottom"> 
            <div align="center"><img src="<%=path%>/IMAGES/44.gif" width="519" height="71"><br>
            <a href="<%=request.getContextPath() %>/index.jsp">&gt;&gt;&gt;回到首页&lt;&lt;&lt;</a></div>
          </td>
        </tr>
        <tr> 
          <td> 
            <div align="center"><img src="<%=path%>/IMAGES/45.gif" width="259" height="302"><img src="<%=path%>/IMAGES/46.gif" width="241" height="302"></div>
          </td>
        </tr>
      </table>
    </td>
    <td width="12" valign="top" background="<%=path%>/IMAGES/60.gif">&nbsp;</td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td><img src="<%=path%>/IMAGES/61.gif" width="780" height="25"></td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
  </tr>
</table>
<br>
</body>
</html>
