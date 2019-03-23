function checkLogin(form){
		if(form.username.value==""){
			alert("用户名不能为空");
			form.username.focus();
			return false;
		}
		if(form.password.value==""){
			alert("用户密码不能为空");
			form.password.focus();
			return false;
		} 
		if((form.username.value=="admin") && (form.password.value=="123")){
			//form.action="admin/admin_index.html";
			var str ="<p>管理员，你好。</p><p><a href='admin_manager/我发布的.html' target=_blank>我发布的</a></p><p><a href='admin_manager/栏目内容管理和审核入口.htm' target=_blank>管理</a></p><p><a href='admin_manager/管理员栏目权限主页.htm' target=_blank >权限</a>  <a href='首页.htm'>退出</a></p><br>";
			document.getElementById("formtd").innerHTML=str;
			return true;
		}
		if((form.username.value!="") && (form.password.value!="")){
			//form.action="expert/expert_index.html";
			var str ="<p>"+form.username.value+"，你好。</p><p><a href='admin_manager/我发布的.html' target=_blank >我发布的</a></p><p><a href='admin_manager/栏目内容管理和审核入口.htm' target=_blank>管理</a></p><p><a href='首页.htm'>退出</a></p><br>";
			document.getElementById("formtd").innerHTML=str;
			return true;
		}
		
		return true;
	}
	