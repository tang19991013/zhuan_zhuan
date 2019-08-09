//引入第三方模快express
const express=require('express');
//引入路由器
const router=require("./routers/router.js");
//创建服务器
var app=express();
//设置监听接口
app.listen(8080);
//使用内置中间件静态文件
app.use(express.static('public'));
//将路由器挂载到pro上
app.use("/pro",router);