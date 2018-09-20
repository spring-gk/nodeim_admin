var mysql_func = require('../library/mysql');

var getNodeAppList = function(page,page_size){
    var sql = "select * from node_app";
    return new Promise(function(resolve,reject){
		mysql_func.doSqlCmdAsync(sql).then(function(res){
			resolve(res);
		}).catch(function(err){
			reject(err);
		});
	});
}

var export_func = {
        'getNodeAppListAsync': getNodeAppList
};
module.exports=export_func;