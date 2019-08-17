//引入MySQL模块
const mysql =require('mysql');
//创建连接池对象
var pool=mysql.createPool({
	host:'127.0.0.1',
	port:3306,
	user:'root',
	password:'',
	database:'zhuan_zhuan',
	connectionLimit:20
});
//导出路由器对象
module.exports=pool;
console.log("连接池已启动");