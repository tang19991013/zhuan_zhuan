//引入第三方模块
const express=require('express');
//引入pool连接池
const pool=require("../pool.js");
//创建路由
var router=express.Router();
//挂载路由
//用户登陆路由
router.get("/v1/zhuan_zhuan/user_login/:uname&:upwd",function(req,res){
	var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	var sql="select uname,upwd from zhuan_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],function(err,result){
		if(err) throw err;
		res.send("1");
	});
});
//导出路由器
module.exports=router;
console.log("路由器已启动");