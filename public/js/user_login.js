//创建登陆函数
function login(){
	var $uname=uname.value;
	var $upwd=upwd.value;
	if(!$uname){
		alert("用户名不能为空！");
		return;
	}
	if(!$upwd){
		alert("用户密码不能为空！");
		return;
	}
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4&&xhr.status==200)
		{
			var result=xhr.responseText;
			if(result=="1"){
				alert("登陆成功，欢迎使用转转！");
			}
			else{
				alert("您的用户名或者密码有误！");
			}
		}
	}
	xhr.open("get","/pro/v1/zhuan_zhuan/user_login/"+$uname+"&"+$upwd,true);
	xhr.send();
}