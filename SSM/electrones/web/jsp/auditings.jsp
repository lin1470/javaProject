<%@ page language="java" import="com.ascent.util.*,com.ascent.bean.*" pageEncoding="gb2312"%>
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
		function tj(){
			form0.action = "updatenewsAction.action";
			form0.method = "post";
			form0.submit();
		}
	</script>

  </head>
  
  <body bgcolor="#FFFFFF" text="#000000" topmargin="0">
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
	                  <a href="<%=path%>">首页</a>&gt;&gt;
	                  <a href="<%=path%>/jsp/authauthAction.action">管理&gt;&gt;</a>
	                  新闻内容审核&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                  <a href="javascript:history.back()"><font color="red">返回</font></a>
	              </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <%
	    	News news = (News)request.getAttribute("news");
	    	String type = (String)request.getAttribute("typ");
	    	String dpage = (String)request.getAttribute("dpage");
	    %>
        <form name="form0">
          <input type="hidden" name="dpage" value="<%=dpage%>"/>
          <table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="78B5C9" bgcolor="78B5C9">
            <tr bgcolor="78B5C9"> 
              <td height="40" colspan="2"> 
                <div align="center"><font size="3">
                	<strong>
                		<%
                			if(news.getType()==1){
                		%>
                				头版头条内容审核
                		<%
                			} else {
                		%>
                				综合新闻内容审核
                		<%
                			}
                		%>
                	</strong> 
                  </font></div>
              </td>
            </tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="30" width="105"> 
                <div align="center">标　　题：</div>
              </td>
              <td bgcolor="E5F1F5" height="22" width="592"> 
                <%=news.getTitle()%>
              </td>
            </tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="30" width="105"> 
                <div align="center">发布日期：</div>
              </td>
              <td bgcolor="E5F1F5" height="22" width="592"> 
                <%=news.getPublishtime()%>
              </td>
            </tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="159" width="105"> 
                <div align="center">正　　文：</div>
              </td>
              <td bgcolor="E5F1F5" height="159" width="592"> 
                <textarea cols="80" rows="8" readonly="true"><%=news.getContent()%></textarea>
              </td>
            </tr>
            <%
    			if(news.getCheckstatus()==1){
    		%>
    				<tr bgcolor="E5F1F5">
		    			<td bgcolor="E5F1F5" height="159" width="105">
		    				<div align="center">一审意见：</div>
		    			</td>
		    			<td bgcolor="E5F1F5" height="159" width="592">
		    				 <textarea cols="80" rows="8" readonly="turn"><%=news.getCheckopinion()%></textarea>
		    			</td>
		    		</tr>
    		<%
    			}
    		%>
    		<tr bgcolor="E5F1F5">
    			<td bgcolor="E5F1F5" height="159" width="105">
    				<div align="center">审核意见：</div>
    			</td>
    			<td bgcolor="E5F1F5" height="159" width="592">
    				<%
    					if(news.getCheckstatus()==1){
    				%>
    						<textarea cols="80" rows="8"" name="secocheopinion"></textarea>
    				<%
    					} else {
    				%>
    						<textarea cols="80" rows="8" name="checkopinion"></textarea>
    				<%
    					}
    				%>
    			</td>
    		</tr>
            <tr bgcolor="E5F1F5"> 
              <td bgcolor="E5F1F5" height="30" width="105"> 
                <div align="center">是否通过：</div>
              </td>
              <td bgcolor="E5F1F5" height="30" width="592"> 
                <input type="radio" name="tg" value="0" checked/>是&nbsp;&nbsp;&nbsp;
    			<input type="radio" name="tg" value="1"/>否
              </td>
            </tr>
          </table>
          <table width="700" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr> 
              <td bgcolor="78B5C9" valign="middle"> 
                <div align="center"><br>
                  <table width="555" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr> 
                      <td width="89"> 
                        <div align="center"></div>
                      </td>
                      <td width="84"> 
                        <div align="center"><a href="javascript:tj()"><img src="<%=path%>/IMAGES/74.gif" width="44" height="18" border="0"
                   ></a></div>
                      </td>
                      <td width="80"> 
                        <div align="center"></div>
                      </td>
                      <td width="74"> 
                        <div align="center"></div>
                      </td>
                      <td width="100"> 
                        <div align="center"></div>
                      </td>
                      <td width="128">&nbsp;</td>
                    </tr>
                  </table>
                  <br>
                </div>
              </td>
            </tr>
          </table>
          <input type="hidden" name="id" value="<%=news.getId()%>"/>
	      <input type="hidden" name="typ" value="<%=type%>"/>
	      <input type="hidden" name="statu" value="<%=news.getCheckstatus()%>"/>        
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
