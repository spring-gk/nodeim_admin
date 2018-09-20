'use strict';
/**
 * 开发环境配置文件
 */
var config = {
    env: 'production', //环境名称
    port: 4000,         //服务端口号
    db_config: {
        'host': '127.0.0.1',
        'port': 6379,
        'database': 'nodeim',
        'username': 'root',
        'password': ''
    },
    zk_config:{
        'host':"127.0.0.1:2181",
        'app_list_path': "/nodeim.app_list"
    },
    dir: "/data1/logs/app/nodejs/" //日志目录
    
};
module.exports=config;