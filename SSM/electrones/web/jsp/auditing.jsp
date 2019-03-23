<%@ page language="java" import="com.ascent.util.*,com.ascent.bean.*" pageEncoding="gb2312"%>
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
	<link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">

  </head>
  
  <body bgcolor="#FFFFFF" text="#000000" topmargin="0">
  	<%
  		Usr user = (Usr)session.getAttribute("user");
  		FindPage fp = (FindPage)request.getAttribute("page");
  		String type = (String)request.getAttribute("typ");
    %>
    <table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><%@ include file="/top1.jsp" %></td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td width="11" valign="top" background="<%=path%>/IMAGES/118.gif">&nbsp; </td>
    <td valign="top"> 
      <div align="center">
        <table width="757" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td background="<%=path%>/IMAGES/73.gif" height="34">
              <table width="755" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="425">&nbsp;</td>
                  <td width="330">
                  	您的位置： <a href="<%=path%>">首页</a>&gt;&gt;
                  	<a href="<%=path%>/jsp/authauthAction.action">管理&gt;&gt;</a>
                  	<%
                  		if("1".equals(type)){
                  	%>
                  			头版头条待审列表
                  	<%
                  		} else {
                  	%>
                  			综合新闻待审列表
                  	<%
                  		}
                  	%>
                  	&nbsp;&nbsp;&nbsp;&nbsp;
	                  <a href="javascript:history.back()"><font color="red">返回</font></a>
                  </td>
                </tr>
            </table>            </td>
          </tr>
        </table>
        <form name="pageForm" method="post" action="auditingnewsAction.action">
          <input type="hidden" name="typ" value="<%=type%>"/>
          <table width="720" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="6199AB" bgcolor="6199AB">
            <tr bgcolor="78B5C9"> 
              <td height="30" width="90"> 
                <div align="center">序号</div>
              </td>
              <td width="400" height="35" bgcolor="78B5C9"> 
                <div align="center">标&nbsp; &nbsp; &nbsp; &nbsp; 题</div>
              </td>
              <td width="140">
                <div align="center">
                  发布时间</div>
              </td>
              <td width="90" height="35"> 
                <div align="center">审核</div>
              </td>
            </tr>
            <%
            	int x = 1+(fp.getCurrentPage()-1)*10;
            %>
            <s:iterator value="#request['sh']">
    			<tr bgcolor="E5F1F5">
    				<td bgcolor="E5F1F5" height="22" width="90"> 
		                <div align="center"><%=x++%></div>
		            </td>
    				<td width="400">
    					<s:property value="title"/>
    				</td>
    				<td width="140">
    					<div align="center"><s:property value="publishtime"/></div>
    				</td>
    				<td width="90">
    					<div align="center"><A href="selectnewsAction.action?id=<s:property value="id"/>&typ=<%=type%>&dpage=<%=fp.getCurrentPage()%>"><img src="<%=path%>/IMAGES/71.gif" width="20" height="16" border="0"></A></div>
    				</td>
    			</tr>
    		</s:iterator>
          </table>
          <table width="720" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr> 
              <td bgcolor="78B5C9" valign="middle"> 
                <div align="center"><br>
                  <%@ include file="/jsp/findpage.jsp" %>
                  <br>
                </div>
              </td>
            </tr>
          </table>
          <br>
        </form>
       
        
      </div>
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
