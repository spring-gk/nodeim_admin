var mysql_func = require('../library/mysql');
//登录
var login = function(username,password){
	/*var from = (page - 1) * page_size;
	var to = page * page_size;
	var count_sql = "select count(1) as total from node_app";
    var sql = "select * from node_app order by update_time desc limit " + from + "," + to;
    var result = {
		'count': 0,
		'data' : []
	};
    return new Promise(function(resolve,reject){
    	mysql_func.doSqlCmdAsync(count_sql).then(function(res){
    		var count = res[0]['total'];
			mysql_func.doSqlCmdAsync(sql).then(function(res){
				result = {
					'count': count,
					'data' : res
				};
				resolve(result);
			}).catch(function(err){
				reject(err);
			});
		}).catch(function(err){
			reject(err);
		});		
	});*/
}

//更新密码
var updatePwd = function(username,password){
	
}

//退出
var logout = function(username){

}

var export_func = {
    'loginAsync': login,
    'logoutAsync': logout,
    'updatePwdAsync': updatePwd
};

module.exports=export_func;