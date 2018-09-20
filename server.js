var express = require('express'),
    app = express(),
    ejs = require('ejs'),
    app_config = require('./config');//配置文件

/**************  web接口 ******************/
var data={
  name : 'webarn',
  sex : '男',
  content : '2222,可以更改'
};

app.get('/', function(req, res){
  //res.send("^_^ Hello ^_^");
  res.render('login',data)
});

//外部接口
//app.use('/api', api);

app.use('/static', express.static(__dirname + '/static'));
app.set('views', './app/views');
app.set('view engine','ejs');
//监听端口，开启服务
app.listen(app_config.port || 4000);