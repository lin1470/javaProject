<%--<%@ page language="java" import="com.ascent.bean.*" pageEncoding="UTF-8"%>--%>
<%@ page language="java" import="com.ascent.bean.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <script type="text/javascript"
          src="<%=path%>/static/js/jquery-1.12.4.min.js"></script>

  <script
          src="<%=path%>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">

  <script type="text/javascript">
    function reset(){
      document.all.username.value = "";
      document.all.password.value = "";
    }
    function validate(){
      var um = document.all.username.value;
      var pw = document.all.password.value;
      if(um==null || um==""){
        alert("用户不能为空");
        document.all.username.focus();
        return false;
      }
      if(pw==null || pw==""){
        alert("密码不能为空");
        document.all.password.focus();
        return false;
      }
      return true;
    }
  </script>

  <script type="text/javascript"
          src="<%=path%>/static/js/jquery-1.12.4.min.js"></script>
  <%--<link--%>
          <%--href="<%=path%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"--%>
          <%--rel="stylesheet">--%>
  <script
          src="<%=path%>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


</head>
<%--<s:action name="indexauthAction"/>--%>
<body bgcolor="#FFFFFF" text="#000000" topmargin="0">
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="4"><img src="<%=request.getContextPath() %>/IMAGES/01.gif" width="780" height="21"></td>
  </tr>
  <tr>
    <td bgcolor="2B70E7" height="40" width="4">
      <div align="center"><img src="<%=request.getContextPath() %>/IMAGES/dian_01.gif" width="1" height="1"></div>
    </td>
    <td bgcolor="F8F8F8" height="45" width="386">
      <div align="center"><h1>电子政务系统</h1></div>
    </td>
    <td bgcolor="F8F8F8" height="40" width="386" valign="middle">      <div align="left">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="1%">&nbsp;</td>
          <td width="33%">&nbsp;</td>
          <c:if test="${empty sessionScope.user}">
            <td width="23%"><a href="loginPage"><img src="<%=path%>/IMAGES/03.gif" width="70" height="22" border="0"></a></td>
          </c:if>
          <td width="21%"><a href="loginPage"><img src="<%=path%>/IMAGES/04.gif" width="69" height="22" border="0"></a></td>
          <td width="22%"><a href="#"><img src="<%=path%>/IMAGES/05.gif" width="69" height="22" border="0"></a></td>
        </tr>
      </table>
    </div>
    </td>
    <td bgcolor="2B70E7" height="40" width="4"><img src="<%=request.getContextPath() %>/IMAGES/dian_01.gif" width="1" height="1"></td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="2B70E7" width="4"><img src="<%=request.getContextPath() %>/IMAGES/dian_01.gif" width="1" height="1"></td>
    <td bgcolor="F8F8F8" width="772">
      <table width="772" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="4">&nbsp;</td>
          <td width="185" valign="top">
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td background="<%=request.getContextPath() %>/IMAGES/25.gif" height="24">
                  <table width="185" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="35">&nbsp;</td>
                      <td width="150">&nbsp; 快 速 登 录 窗 口</td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr bgcolor="D6E3F9">
                <td height="129" colspan="2" align="center">
                  <%
                    NewsWithBLOBs news = (NewsWithBLOBs) session.getAttribute("typ1");
                    Usr user = (Usr)session.getAttribute("user");
                    if(user!=null){
                  %>
                  <%=user.getNickname()%>&nbsp;你好<br><br>
                  <a href="<%=path%>/admin_manager/myIssuenews.html">我发布的</a><br><br>
                  <a href="<%=path%>/admin_manager/newsManage.htm">管理</a><br><br>
                  <%
                    if("1".equals(user.getAuth())){
                  %>
                  <a href="#">权限管理</a>
                  <%
                    }
                  %>
                  <a href="<%=path%>/userExit">退出</a>
                  <%
                  } else {
//                      如果没有登录的话,那么显示下面的登录的界面.
                    String tip = (String)request.getAttribute("tip");
                  %>
                  <form name="form0" action="login" method="post">
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td	colspan="3">
                          <div id="um" align="center">
                            <%--需要修改--%>
                            <%
                              if(tip!=null && !"".equals(tip)){
                                out.write("<font color='red'>");
                                out.write(tip);
                                out.write("</font>");
                              } else {
                                out.write("&nbsp;");
                              }
                            %>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td width="38%" height="33" align="right">用 户：</td>
                        <td width="4%">&nbsp;</td>
                        <td width="58%" align="left">
                          <input type="text" name="username" size='14' style="BACKGROUND: #ffffff; BORDER-BOTTOM: #666666 1px solid; BORDER-LEFT: #666666 1px solid; BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; COLOR: black; FONT-SIZE: 9pt"/>
                        </td>
                      </tr>
                      <tr>
                        <td	colspan="3">
                          <div id="pw"></div>
                        </td>
                      </tr>
                      <tr>
                        <td height="31" align="right" valign="middle">密 码：</td>
                        <td>&nbsp;</td>
                        <td align="left">
                          <input type="password" name="password" size='14'style="BACKGROUND: #ffffff; BORDER-BOTTOM: #666666 1px solid; BORDER-LEFT: #666666 1px solid; BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; COLOR: black; FONT-SIZE: 9pt"/>
                        </td>
                      </tr>
                      <tr align="center" valign="bottom">
                        <td height="30" colspan="3">
                          <INPUT height=22 name=queding src="<%=path%>/IMAGES/enter.jpg" type=image width=64 onclick="return validate();">
                          <a href="javascript:reset()"><IMG src="IMAGES/cancel.jpg" width=64 height=22 border="0"></a> </td>
                      </tr>
                      <tr align="center" valign="bottom">
                        <td height="15" colspan="3"><br>您还没有登录，请先登录！</td>
                      </tr>
                    </table>
                  </form>
                  <%
                    }
                  %>
                </td>
              </tr>
            </table>
            <table width="100%" height="5"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="5"></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td background="IMAGES/25.gif" height="24">
                  <table width="185" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="35">&nbsp;</td>
                      <td width="150">职能部门通知</td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">职能部门通知职能部门通知</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">职能部门通知职能部门通知</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">职能部门通知职能部门通知</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22" bgcolor="D6E3F9">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">职能部门通知职能部门通知</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">&nbsp;</td>
                <td width="160" height="30">
                  <div align="right"><span class="p6"><a href="news/znbmtz.htm"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
              </tr>
            </table>
            <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5"></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td background="IMAGES/25.gif" height="24">
                  <table width="180" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="35">&nbsp;</td>
                      <td width="145">公告栏</td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">公告栏公告栏公告栏公告栏</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">公告栏公告栏公告栏公告栏</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22"><a href="news/view.htm">公告栏公告栏公告栏公告栏</a></td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">
                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                <td width="160" height="22">公告栏公告栏公告栏公告栏</td>
              </tr>
              <tr bgcolor="D6E3F9">
                <td width="25">&nbsp;</td>
                <td width="160" height="30">
                  <div align="right"><span class="p6"><a href="news/gonggao.htm"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="5" bgcolor="F8F8F8"><img src="IMAGES/dian_02.gif" width="1" height="1"></td>
              </tr>
              <tr>
                <td background="IMAGES/10.gif" height="24">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="18%">&nbsp;</td>
                      <td width="82%">招聘信息</td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="D6E3F9" height="296" valign="top">
                  <table width="185" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22"><a href="news/view.htm">招聘信息招聘信息招聘信息</a></td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22"><a href="news/view.htm">招聘信息招聘信息招聘信息</a></td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22"><a href="news/view.htm">招聘信息招聘信息招聘信息</a></td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">
                        <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                      </td>
                      <td width="160" height="22">招聘信息招聘信息招聘信息</td>
                    </tr>
                    <tr>
                      <td width="25">&nbsp;</td>
                      <td width="160" height="30" bgcolor="D6E3F9">
                        <div align="right"><span class="p6"><a href="#"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2">
                      </td>
                    </tr>
                  </table>                </td>
              </tr>
            </table>
            <table width="185" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="IMAGES/16.gif" width="185" height="14"></td>
              </tr>
            </table></td>
          <td valign="top" width="583">
            <table width="583" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="IMAGES/17.gif" width="583" height="64"></td>
              </tr>
              <tr>
                <td>
                  <div align="right"><img src="IMAGES/18.gif" width="570" height="36" usemap="#Map" border="0"></div>
                </td>
              </tr>
            </table>
            <table width="575" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td bgcolor="F8F8F8" height="10"><img src="IMAGES/dian_02.gif" width="1" height="1"></td>
              </tr>
              <tr>
                <td bgcolor="F8F8F8" valign="top">
                  <table width="575" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><img src="IMAGES/19.gif" width="575" height="11"></td>
                    </tr>
                  </table>
                  <table width="575" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="10"><img src="IMAGES/21.gif" width="10" height="179"></td>
                      <td width="555" valign="top">
                        <table width="555" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="333" height="176" valign="top">
                              <table width="320" border="0" cellspacing="0" cellpadding="0" align="center">
                                <tr>
                                  <td>
                                    <%
                                      String title = "";
                                      if(news!=null){
                                        if(news.getTitle().length()>14){
                                          title = news.getTitle().substring(0,14)+"......";
                                        } else {
                                          title = news.getTitle();
                                        }
                                      } else {
                                        title = "2004年12月3日-12月8日，第六届海峡两岸空间/太空科学研讨会在中国历史文化名城山东曲阜召开。来自两岸20多家单位的近60名专家学者参加了此次会议。论文内容包括空间物理学、空间环境探测及其应用各领域.... ";
                                      }
                                    %>
                                    <div><span class="p3 p6"><strong><%=title%></strong></span></div>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="50" valign="top">
                                    <%
                                      String str = "";
                                      if(news!=null){
                                        if(news.getContent().length()>76){
                                          str = news.getContent().substring(0,76)+"......";
                                        } else {
                                          str = news.getContent();
                                        }
//                                        str="假的信息.";
                                      }
                                    %>
                                    <table>
                                      <tr>
                                        <td height="40">
                                          <div align="left"><br>
                                            　			<span class="p6">
		                                      			　<%=str%>
		                                      		</span>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td height="10" align="right">
                                          <%
                                            if(news!=null){
                                          %>
                                          <a href="news/<%=news.getId()%>" target="_blank"><font color="#3333FF"> &gt;&gt;详细内容</font></a>
                                          <%
                                          } else {
                                          %>
                                          &nbsp;
                                          <%
                                            }
                                          %>
                                        </td>
                                      </tr>
                                    </table>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="48" align="center" valign="bottom"><a href="<%=path%>/jsp/listNewsnewsAction.action?typ=1"><font color="#3333FF"> &gt;&gt;&gt;更多新闻&lt;&lt;&lt;</font></a></td>
                                </tr>
                              </table>
                            </td>
                            <td width="205"><a href="news/view1.htm"><img src="IMAGES/23.gif" width="202" height="176" border="0"></a></td>
                          </tr>
                        </table>
                      </td>
                      <td><img src="IMAGES/22.gif" width="10" height="179"></td>
                    </tr>
                  </table>
                  <table width="575" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><img src="IMAGES/20.gif" width="575" height="11"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <div align="center">
              <table width="575" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="24" bgcolor="#99C9FD">
                          <table width="382" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="36">&nbsp;</td>
                              <td width="346">综合新闻</td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                        <td bgcolor="#FFFFFF" height="154">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <c:forEach items="${sessionScope.typ2}" var="news">
                              <tr>
                                <td width="35">
                                  <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3">
                                  </div>
                                </td>
                                <td width="527" height="22">
                                  <a href="news/${news.id}" target="_blank">${news.title}</a>
                                </td>
                              </tr>
                            </c:forEach>

                            <tr>
                              <td height="33" colspan="2">
                                <div align="right"><span class="p6"><a href="<%=path%>/jsp/listNewsnewsAction.action?typ=2"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
                            </tr>
                          </table>                        </td>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                        <td bgcolor="#FFFFFF" height="204">						<table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="24" bgcolor="#99C9FD">
                              <table width="382" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="38">&nbsp;</td>
                                  <td width="344">学术动态</td>
                                </tr>
                              </table></td>
                          </tr>
                        </table>                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3">
                              </div>
                            </td>
                            <td width="528" height="22"><a href="news/view.htm">学术动态学术动态学术动态学术动态学术动态学术动态学术动态　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                            </td>
                            <td width="528" height="22"><a href="news/view.htm">学术动态学术动态学术动态学术动态学术动态学术动态学术动态　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                            </td>
                            <td width="528" height="22"><a href="#">学术动态学术动态学术动态学术动态学术动态</a><a href="news/view.htm">学术动态</a><a href="news/view.htm">学术动态</a><a href="#">　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                            </td>
                            <td width="528" height="22"><a href="#">学术动态学术动态学术动态学术动态学术动态　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                            </td>
                            <td width="528" height="22"><a href="#">学术动态学术动态学术动态学术动态学术动态　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td width="34">
                              <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div>
                            </td>
                            <td width="528" height="22"><a href="#">学术动态学术动态学术动态学术动态学术动态　2004-12-30</a></td>
                          </tr>
                          <tr>
                            <td height="32" colspan="2"><div align="right"><span class="p6"><a href="news/dongtai.htm"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
                          </tr>
                        </table>
                        </td>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="24" bgcolor="#99C9FD">
                          <table width="382" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="36">&nbsp;</td>
                              <td width="346">三会公告栏</td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                        <td bgcolor="#FFFFFF" height="183">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"> </div></td>
                              <td width="529" height="22"><a href="news/view.htm">三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="529" height="22"><a href="news/view.htm">三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="529" height="22"><a href="news/view.htm">三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="529" height="22"><a href="#">三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="529" height="22"><a href="#">三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="529" height="22"><a href="#">三会公告栏三会公告栏三会公告栏三会公告栏　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td height="26" colspan="2">
                                <div align="right"><span class="p6"><a href="news/sanhui.htm"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
                            </tr>
                          </table></td>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="24" bgcolor="#99C9FD">
                          <table width="382" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="36">&nbsp;</td>
                              <td width="346">创新文化报道</td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                        <td bgcolor="#FFFFFF" height="175">
                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"> </div></td>
                              <td width="528" height="22"><a href="news/view.htm">创新文化报道创新文化报道创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="528" height="22"><a href="news/view.htm">创新文化报道创新文化报道创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="528" height="22"><a href="news/view.htm">创新文化报道创新文化报道创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="528" height="22"><a href="#">创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="528" height="22"><a href="#">创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td width="33">
                                <div align="center"><img src="IMAGES/dian_03.gif" width="3" height="3"></div></td>
                              <td width="528" height="22"><a href="#">创新文化报道创新文化报道创新文化报道　2004-12-30</a></td>
                            </tr>
                            <tr>
                              <td height="22" colspan="2">
                                <div align="right"><span class="p6"><a href="news/chuangxin.htm"><font color="#3333FF">&gt;&gt;更多内容</font></a></span></div></td>
                            </tr>
                          </table></td>
                        <td bgcolor="B7B7B7" width="1"><img src="IMAGES/dian_04.gif" width="1" height="1"></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
            </div>
          </td>
        </tr>
      </table>
    </td>
    <td bgcolor="2B70E7" width="4"><img src="IMAGES/dian_01.gif" width="1" height="1"><img src="IMAGES/dian_01.gif" width="1" height="1"></td>
  </tr>
</table>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td background="IMAGES/09.gif" height="34">&nbsp;</td>
  </tr>
</table>
<br>
<map name="Map">
  <area shape="rect" coords="111,6,193,25" href="#">
  <area shape="rect" coords="231,6,311,25" href="#">
  <area shape="rect" coords="352,5,431,25" href="#">
  <area shape="rect" coords="473,5,553,27" href="#">
</map>
</body>
</html>
