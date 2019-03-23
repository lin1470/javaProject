<%@ page language="java" import="com.ascent.util.*,com.ascent.bean.*"
	pageEncoding="UTF-8"%>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr> 
		    <td colspan="4"><img src="<%=path%>/IMAGES/01.gif" width="780" height="21"></td>
		  </tr>
		  <tr> 
		    <td bgcolor="2B70E7" height="40" width="4"> 
		      <div align="center"><img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1"></div>
		    </td>
		    <td bgcolor="F8F8F8" height="45" width="386"> 
		      <div align="center"><img src="<%=path%>/IMAGES/02.gif" width="338" height="31"></div>
		    </td>
		    <td bgcolor="F8F8F8" height="40" width="386" valign="middle">&nbsp;</td>
		    <td bgcolor="2B70E7" height="40" width="4"><img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1"></td>
		  </tr>
		</table>
		<table width="780" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td bgcolor="2B70E7" width="4">
					<img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1">
				</td>
				<td width="772" align="center" bgcolor="F8F8F8">
					<table width="600" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="160" valign="top"
								background="<%=path%>/IMAGES/144.gif">
								<table width="143" border="0" cellspacing="2" cellpadding="2"
									align="center">
									<tr>
										<td height="80" colspan="2" valign="top">
											<img src="<%=path%>/IMAGES/TT.gif" width="145" height="60">
										</td>
									</tr>
									<tr>
										<td width="23">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td width="120" height="20">
											<div align="left">
												<a href="topnews.htm">头版头条新闻</a>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2" height="3">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td height="20">
											<a href="zonghenews.htm">综合新闻</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td height="20">
											<a href="dongtai.htm">学术动态</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td height="20">
											<a href="sanhui.htm">三会公告</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td>
											<a href="chuangxin.htm">创新文化报道</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td>
											<a href="znbmtz.htm">职能部门通知</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td>
											<a href="gonggao.htm">公 告 栏</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
									<tr>
										<td height="20">
											<div align="center">
												<img src="<%=path%>/IMAGES/146.gif" width="14" height="13" />
											</div>
										</td>
										<td>
											<a href="zpxx.htm">招聘信息</a>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<img src="<%=path%>/IMAGES/145.gif" width="143" height="3" />
										</td>
									</tr>
								</table>
								<br />
								<br />
								<br />
								<br />
								<br />
							</td>
							<td width="440" height="25" valign="top">
								<table>
									<tr>
										<td valign="top" height="70">
											<table width="595" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<%
														FindPage fp = (FindPage) request.getAttribute("page");
														String type = (String) request.getAttribute("typ");
														String til = "综合新闻";
														if ("1".equals(type)) {
															til = "头版头条";
														}
													%>
													<td height="25" background="<%=path%>/IMAGES/147.gif">
														<table width="580" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="30">
																	&nbsp;
																</td>
																<td width="500">
																	<%=til%>
																</td>
																<td width="50">
																	<a href="<%=path%>/index.jsp">返回</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="320" valign="top">
											<table width="597" border="0" cellspacing="2" cellpadding="2">
												<s:iterator value="#request['newslist']">
								                	<tr>
								                		<td width="20" height="22">
								                			<div align="right"><img src="<%=path%>/IMAGES/148.gif" width="4" height="4"></div>
								                		</td>
								                		<td width="563">
								                			<a href="viewnewsAction.action?id=<s:property value="id"/>" target="_blank"><s:property value="title"/></a>
								                		</td>
								                	</tr>
								                </s:iterator>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="bottom" height="80">
											<form name="pageForm" method="post" action="listNewsnewsAction.action">
								              	<input type="hidden" name="typ" value="<%=type%>"/>
								                <%@ include file="/jsp/findpage.jsp" %>
								            </form>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<br>
				</td>
				<td bgcolor="2B70E7" width="4">
					<img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1">
					<img src="<%=path%>/IMAGES/dian_01.gif" width="1" height="1">
				</td>
			</tr>
		</table>
		<table width="780" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td background="<%=path%>/IMAGES/09.gif" height="34">
					&nbsp;
				</td>
			</tr>
		</table>
		<br>
	</body>

</html>
