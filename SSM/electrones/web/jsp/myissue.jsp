<%@ page language="java" import="java.util.*,com.ascent.util.*" pageEncoding="utf-8"%>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Ascent电子政务系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">

  </head>
  
  <body bgcolor="#FFFFFF" text="#000000" topmargin="0">
  <%
  	FindPage fp = (FindPage)request.getAttribute("page");
  %>
  <table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td> <%@ include file="/top1.jsp" %> </td>
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
                  <td width="330">您的位置： 
                  <a href="<%=path%>">首页
                  </a>&gt;&gt;我发布的
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="javascript:history.back()"><font color="red">返回</font></a>
			      
                </tr>
            </table>            </td>
          </tr>
        </table>
        <form name="pageForm" method="post" action="myIssuenewsAction.action">
          <table width="720" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="6199AB" bgcolor="6199AB">
            <tr bgcolor="78B5C9"> 
              <td height="35" width="80"> 
                <div align="center">序号</div>
              </td>
              <td width="200" height="35" bgcolor="78B5C9"> 
                <div align="center">标&nbsp; &nbsp; &nbsp; &nbsp; 题</div>
              </td>
              <td width="140">
                <div align="center">新闻类型</div>
              </td>
              <td width="75">
                <div align="center">发布日期</div>
              </td>
              <td width="75">
                <div align="center">当前状态</div>
              </td>
              <td width="50"> 
                <div align="center">是否发布</div>
              </td>
              <td width="50"> 
                <div align="center">修改</div>
              </td>
              <td width="50"> 
                <div align="center">撤销</div>
              </td>
            </tr>
            <%
            	int x = 1+(fp.getCurrentPage()-1)*10;
            %>
            <s:iterator value="#request['mynews']">
	    		<tr bgcolor="78B5C9">
	    			<td height="35" width="80"> 
		                <div align="center"><%=x%></div>
		                <%x++;%>
		            </td>
	    			<td bgcolor="78B5C9">
	    				<s:property value="title"/>
	    			</td>
	    			<td>
	    				<div align="center">
		    				<s:if test="type==1">
		    					头版头条
		    				</s:if>
		    				<s:else>
		    					综合新闻
		    				</s:else>
	    				</div>
	    			</td>
	    			<td>
	    				<div align="center">
	    					<s:property value="publishtime"/>
	    				</div>
	    			</td>
	    			<td>
	    				<div align="center">
		    				<s:if test="checkstatus==0">
		    					待审
		    				</s:if>
		    				<s:elseif test="checkstatus==1">
		    					通过一次审核
		    				</s:elseif>
		    				<s:elseif test="checkstatus==2">
		    					通过二次审核
		    				</s:elseif>
		    				<s:elseif test="checkstatus==3">
		    					审核通过
		    				</s:elseif>
		    				<s:elseif test="checkstatus==4">
		    					一审驳回
		    				</s:elseif>
		    				<s:elseif test="checkstatus==5">
		    					二审驳回
		    				</s:elseif>
		    				<s:elseif test="checkstatus==6">
		    					驳回
		    				</s:elseif>
		    			</div>
	    			</td>
	    			<td>
	    				<div align="center">
		    				<s:if test="status==1">
		    					已发布
		    				</s:if>
		    				<s:else>
		    					未发布
		    				</s:else>
		    			</div>
	    			</td>
	    			<td>
	    				<div align="center"><a href="selectNewsnewsAction.action?id=<s:property value="id"/>&dpage=<%=fp.getCurrentPage()%>"><img src="<%=path%>/IMAGES/71.gif" width="20" height="16" border="0"></a></div>
	    			</td>
	    			<td>
	    				<div align="center">
	    					<s:if test="checkstatus==1 || checkstatus==2">
	    						<a href="changeStatusnewsAction.action?id=<s:property value="id"/>&dpage=<%=fp.getCurrentPage()%>"><img src="<%=path%>/IMAGES/72.gif" width="20" height="16" border="0"></a>
	    					</s:if>
	    					<s:else>
	    						<img src="<%=path%>/IMAGES/180.gif" width="20" height="16" border="0" alt="本条新闻未通过审核">
	    					</s:else>
	    				</div>
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
