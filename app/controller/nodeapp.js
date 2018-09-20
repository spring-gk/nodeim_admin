'use strict';
var express = require('express'),
    router = express.Router(),
    nodeapp_model = require('../model/nodeapp');
// 该路由使用的中间件
/*
router.use(function timeLog(req, res, next) {
  console.log('Time: ', Date.now());
  next();
});
*/
router.get('/', function(req, res) {
	res.render('nodeapp')
	//res.render('nodeapp');
});

router.get('/data',function(req,res){
	nodeapp_model.getNodeAppListAsync(1,10).then(function(result){
		res.send(result);
	}).catch(function(err){
		res.send(err);
	});
});


module.exports = router;