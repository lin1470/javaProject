<%@ page language="java" import="com.ascent.bean.*"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
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
		<script src="<%=request.getContextPath()%>/js/prototype-1.4.0.js"
			type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/js/json.js"
			type="text/javascript"></script>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=path%>/IMAGES/001.css" type="text/css">
		<script type="text/javascript">
		function manageAdd(){
			var leng = document.all.user.length;
			for(var i=0;i<leng;i++){
				if(document.all.user.options[i].selected){
					var utext = document.all.user.options[i].text;
					var uvalue = document.all.user.options[i].value;
					var leng1 = document.all.guanli.length;
					document.all.guanli.options[leng1]=new Option(utext,uvalue);
					document.all.user.options[i]=null;
				}
			}
		}
		function auditingAdd(){
			var leng = document.all.user.length;
			for(var i=0;i<leng;i++){
				if(document.all.user.options[i].selected){
					var utext = document.all.user.options[i].text;
					var uvalue = document.all.user.options[i].value;
					var leng1 = document.all.shenhe.length;
					document.all.shenhe.options[leng1] = new Option(utext,uvalue);
					document.all.user.options[i] = null;
				}
			}
		}
		function manageDelete(){
			var leng = document.all.guanli.length;
			for(var i=0;i<leng;i++){
				if(document.all.guanli.options[i].selected){
					var utext = document.all.guanli.options[i].text;
					var uvalue = document.all.guanli.options[i].value;
					var leng1 = document.all.user.length;
					document.all.user.options[leng1]=new Option(utext,uvalue);
					document.all.guanli.options[i]=null;
				}
			}
		}
		function auditingDelete(){
			var leng = document.all.shenhe.length;
			for(var i=0;i<leng;i++){
				if(document.all.shenhe.options[i].selected){
					var utext = document.all.shenhe.options[i].text;
					var uvalue = document.all.shenhe.options[i].value;
					var leng1 = document.all.user.length;
					document.all.user.options[leng1]=new Option(utext,uvalue);
					document.all.shenhe.options[i]=null;
				}
			}
		}
		function selectDeptUser(){
			var url = "deptUserauthAction.action"
			var deptid = document.all.dept.value;
			var params = "pars="+deptid+","+document.all.typ.value;
			var myAjax = new Ajax.Request(
				url,
				{
					//请求方式：POST
					method:'post',
					//请求参数
					parameters:params,
					//指定回调函数
					onComplete: processResponse,
					//是否异步发送请求
					asynchronous:true
				});
		}
		function processResponse(request){
			var action = request.responseText.parseJSON();
			var idArray = action.id;
			var nameArray = action.name;
			var gidArray = action.gid;
			var gnameArray = action.gname;
			var sidArray = action.sid;
			var snameArray = action.sname;
			var id = idArray.split(",");
			var name = nameArray.split(",");
			var gid = gidArray.split(",");
			var gname = gnameArray.split(",");
			var sid = sidArray.split(",");
			var sname = snameArray.split(",");
			var leng = document.all.user.length;
			for(var i=leng-1;i>=0;i--){
				document.all.user.options[i] = null;
			}
			for(var i=0;i<id.length;i++){
				if(id[i]!=null && id[i]!=""){
					document.all.user.options[i] = new Option(name[i],id[i]);
				}
			}
			leng = document.all.guanli.length;
			for(var i=leng-1;i>=0;i--){
				document.all.guanli.options[i] = null;
			}
			for(var i=0;i<gid.length;i++){
				if(gid[i]!=null && gid[i]!=""){
					document.all.guanli.options[i] = new Option(gname[i],gid[i]);
				}
			}
			leng = document.all.shenhe.length;
			for(var i=leng-1;i>=0;i--){
				document.all.shenhe.options[i] = null;
			}
			for(var i=0;i<sid.length;i++){
				if(sid[i]!=null && sid[i]!=""){
					document.all.shenhe.options[i] = new Option(sname[i],sid[i]);
				}
			}
		}
		function saveAuthPlot(){
			var glen = document.all.guanli.length;
			var slen = document.all.shenhe.length;
			var gid = "";
			var sid = "";
			for(var i=0;i<glen;i++){
				if(i==0){
					gid = document.all.guanli.options[i].value;
				} else {
					gid = gid+","+document.all.guanli.options[i].value;
				}
			}
			for(var i=0;i<slen;i++){
				if(i==0){
					sid = document.all.shenhe.options[i].value;
				} else {
					sid = sid+","+document.all.shenhe.options[i].value;
				}
			}
			document.all.gid.value = gid;
			document.all.sid.value = sid;
			form0.action = "addPlotauthAction.action";
			form0.method = "post";
			form0.submit();
		}
	</script>

	</head>

	<body bgcolor="#FFFFFF" text="#000000" topmargin="0">
		<%
			String typ = (String) request.getAttribute("typ");
			List deptlist = (List) request.getAttribute("dept");
			List userlist = (List) request.getAttribute("user1");
			List guserlist = (List) request.getAttribute("guser");
			List suserlist = (List) request.getAttribute("suser");
		%>
		<table width="780" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
		    	<td width="416"><img src="<%=path%>/IMAGES/51.gif" width="416" height="78"></td>
		    	<td width="364" background="<%=path%>/IMAGES/52.gif" valign="middle" align="right"><br>
		        <br>
		        
      <a href="<%=path%>/exitAction.action"><img src="<%=path%>/IMAGES/64.gif" border="0"></a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        </td>
		    </tr>
		    <tr>
		    	<td colspan="2"><img src="<%=path%>/IMAGES/53.gif" width="780" height="10"></td>
		    </tr>
		</table>
		<table width="780" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td width="11" valign="top" background="<%=path%>/IMAGES/118.gif">
					&nbsp;
				</td>
				<td width="172" valign="top" background="<%=path%>/IMAGES/119.gif">
					&nbsp;
				</td>
				<td width="585" valign="top">
					<table width="564" border="0" cellspacing="2" cellpadding="2">
						<tr>
							<td height="80" valign="middle">
								<div align="left">
									<img src="<%=path%>/IMAGES/109.gif" width="519" height="56">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div align="center">
									<form name="form0">
										<input type="hidden" name="gid">
								    	<input type="hidden" name="sid">
								    	<input type="hidden" name="typ" value="<%=typ%>"/>
										<table width="550" border="0" cellpadding="0" cellspacing="0" bordercolor="CCEEFF" bgcolor="CCEEFF">
											<tr bgcolor="B4E5FC">
												<td width="196" height="24" bgcolor="B4E5FC">
													<div align="center">
														<img src="<%=path%>/IMAGES/110.gif" width="10" height="10">
														栏目名称：
														<%
									    					if("1".equals(typ)){
									    						out.print("头版头条");
									    					} else {
									    						out.print("综合新闻");
									    					}
									    				%>
													</div>
												</td>
												<td width="354" height="35" bgcolor="B4E5FC">
													部门：
													<select name="dept" onchange="selectDeptUser()">
					    								<%
					    									for(int i=0;i<deptlist.size();i++){
					    										Department dt = (Department)deptlist.get(i);
					    								%>
					    										<option value="<%=dt.getId()%>"><%=dt.getName()%></option>
					    								<%
					    									}
					    								%>
					    							</select>
												</td>
											</tr>
										</table>
										<table width="550" border="0" cellpadding="0" cellspacing="0"
											bordercolor="CCEEFF" bgcolor="CCEEFF">
											<tr bgcolor="f8f8f8">
												<td width="85" height="35">
													<div align="center"></div>
												</td>
												<td width="168">
													<div align="center">
														备选用户：
													</div>
												</td>
												<td width="52">
													&nbsp;
												</td>
												<td width="163">
													<div align="center">
														管理权限：
													</div>
												</td>
												<td width="82">
													&nbsp;
												</td>
											</tr>
											<tr bgcolor="f8f8f8">
												<td height="252">
													<div align="center">
													</div>
												</td>
												<td height="252">
													<div align="center">
														<select name="user" multiple size="15" style="width: 100px">
						    								<%
						    									for(int i=0;i<userlist.size();i++){
						    										Usr user = (Usr)userlist.get(i);
						    								%>
						    										<option value="<%=user.getId()%>"><%=user.getNickname()%></option>
						    								<%
						    									}
						    								%>
						    							</select>
													</div>
												</td>
												<td>
													<table width="100%" border="0">
														<tr>
															<td height="31">
																<div align="center">
																	<input type="button" name="add1" value="添加" onclick="manageAdd()"/>
																</div>
															</td>
														</tr>
														<tr>
															<td height="29">
																<div align="center">
																	<input type="button" name="del1" value="移出" onclick="manageDelete()"/>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																&nbsp;
															</td>
														</tr>
														<tr>
															<td>
																&nbsp;
															</td>
														</tr>
														<tr>
															<td height="35">
																<div align="center">
																	<input type="button" name="add2" value="添加" onclick="auditingAdd()"/>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div align="center">
																	<input type="button" name="del2" value="移出" onclick="auditingDelete()"/>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																&nbsp;
															</td>
														</tr>
													</table>
												</td>
												<td colspan="2">
													<div align="center">
														<table width="100%" border="0">
															<tr>
																<td width="67%">
																	<div align="center">
																		<select name="guanli" multiple size="6" style="width: 100px;">
										    								<%
										    									for(int i=0;i<guserlist.size();i++){
										    										Usr user = (Usr)guserlist.get(i);
										    								%>
										    										<option value="<%=user.getId()%>"><%=user.getNickname()%></option>
										    								<%
										    									}
										    								%>
										    							</select>
																	</div>
																</td>
																<td width="33%">
																	&nbsp;
																</td>
															</tr>
															<tr>
																<td height="40">
																	<div align="center">
																		审核权限：
																	</div>
																</td>
																<td height="40">
																	&nbsp;
																</td>
															</tr>
															<tr>
																<td>
																	<div align="center">
																		<select name="shenhe" multiple size="6" style="width: 100px;">
										    								<%
										    									for(int i=0;i<suserlist.size();i++){
										    										Usr user = (Usr)suserlist.get(i);
										    								%>
										    										<option value="<%=user.getId()%>"><%=user.getNickname()%></option>
										    								<%
										    									}
										    								%>
										    							</select>
																	</div>
																</td>
																<td>
																	&nbsp;
																</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
										</table>
										<table width="550" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td height="40" bgcolor="DBF3FF">
													<table width="555" border="0" cellspacing="0"
														cellpadding="0" align="center">
														<tr>
															<td width="89">
																<div align="center"></div>
															</td>
															<td width="84">
																<div align="center"></div>
															</td>
															<td width="108">
																<div align="center">
																	<a href="javascript:saveAuthPlot()"><img src="<%=path%>/IMAGES/74.gif"
																			width="44" height="18" border="0">
																	</a>
																</div>
															</td>
															<td width="117">
																<div align="center">
																	<a href="#" onclick="javascirpt:history.go(-1)"><img src="<%=path%>/IMAGES/75x.jpg"
																			width="44" height="18" border="0">
																	</a>
																</div>
															</td>
															<td width="157">
																<div align="center"></div>
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
										<br>
									</form>
								</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="12" valign="top" background="<%=path%>/IMAGES/60.gif">
					&nbsp;
				</td>
			</tr>
		</table>
		<table width="780" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td>
					<img src="<%=path%>/IMAGES/61.gif" width="780" height="25">
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
			</tr>
		</table>
		<br>
	</body>
</html>
