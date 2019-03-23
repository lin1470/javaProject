<%@ page language="java" import="java.util.*,com.ascent.bean.*" pageEncoding="utf-8"%>
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
	<script type="text/javascript">
		function login(){
			alert("请先登陆");
			return false;
		}
		function sub(){
			form0.action = "addNewsnewsAction.action";
			form0.method = "post";
			form0.submit();
		}
	</script>

  </head>
  
  <body bgcolor="#FFFFFF" text="#000000" topmargin="0">
    <% 
    	String type = request.getParameter("typ"); 
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
            <td background="<%=path%>/IMAGES/93.gif" height="34">
              <table width="755" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="425">&nbsp;</td>
                  <td width="330">您的位置： 
	                  <a href="<%=path%>">首页</a>&gt;&gt;
	                  <a href="<%=path%>/jsp/authauthAction.action">管理</a>&gt;&gt;新闻发布
	                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                  <a href="javascript:history.back()"><font color="red">返回</font></a>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <form name="form0">
          <table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="78B5C9" bgcolor="78B5C9">
            <tr bgcolor="78B5C9"> 
              <td height="40" colspan="2"> 
                <div align="center"> 
                	<strong>
                		<%
                			if("1".equals(type)){
                		%>
                				头版头条发布
                		<%
                			} else {
                		%>
                				综合新闻发布
                		<%
                			}
                		%>
					</strong>
				</div>
              </td>
            </tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="30" width="105"> 
                <div align="center">标　　题：</div>
              </td>
              <td bgcolor="E5F1F5" height="22" width="592"> 
                <input type="text" name="title" size="50">
              </td>
            </tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="137" width="105"> 
                <div align="center">正　　文：</div>
              </td>
              <td bgcolor="E5F1F5" height="137" width="592"> 
                <textarea name="content" cols="70" rows="8"></textarea>
              </td>
            </tr>
            <%
            	if(!"1".equals(type)){
            %>
            		<tr bgcolor="E5F1F5"> 
		              <td bgcolor="E5F1F5" height="30" width="105"> 
		                <div align="center">是否跨栏：</div>
		              </td>
		              <td bgcolor="E5F1F5" height="30" width="592"> 
		                <input type="radio" name="crosstatus" value="0" checked/>是&nbsp;&nbsp;&nbsp;
		    			<input type="radio" name="crosstatus" value="1"/>不是
		              </td>
		            </tr>
            <%
            	}
            %>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="20" colspan="2">&nbsp; </td>
            </tr>
          </table>
          <table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr> 
              <td bgcolor="78B5C9" valign="middle"> 
                <div align="center"><br>
                  <table width="555" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td width="89"> 
                        <div align="center">
	                        <%
		    					Usr user = (Usr)session.getAttribute("user");
		    					if(user==null){
		    				%>
		    						<input type="submit" name="sub" value="提交" onclick="return tj()"/>
		    						<a href="javascript:login()"><img src="<%=path%>/IMAGES/74.gif" width="44" height="18" border="0"></a>
		    				<%
		    					} else {
		    				%>
		    						<a href="javascript:sub()"><img src="<%=path%>/IMAGES/74.gif" width="44" height="18" border="0"></a>
		    				<%
		    					}
		    				%>
                        </div>
                      </td>
                      <td width="93"> 
                        <div align="center"></div>
                      </td>
                      <td width="93"> 
                        <div align="center"></div>
                      </td>
                      <td width="106"> 
                        <div align="center"></div>
                      </td>
                      <td width="174"> 
                        <div align="center"></div>
                      </td>
                    </tr>
                  </table>
                  <br>
                </div>
              </td>
            </tr>
          </table>
          <input type="hidden" name="typ" value="<%=type%>"/>        
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
