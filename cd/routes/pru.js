const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
router.get("/v1/productlist",(req,res)=>{
	var sql="select * from kid_product";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});
router.delete("/v1/deleteproduct/:lid",(req,res)=>{
	var $lid=req.params.lid;
	var sql="delete from kid_product where lid=?";
	pool.query(sql,[$lid],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});
//根据lid查询商品信息
router.get("/v1/queryproduct/:lid",(req,res)=>{
	var $lid=req.params.lid;
	var sql="select * from kid_prouduct where lid=?"
	pool.query(sql,[$lid]),(err,result)=>{
		if(result.length>0){
			res.send(result);
		}else{
			res.send("0");
		}
	});
});
router.put("/v1/updatepriduct",(req,res)=>{
	var obj=req.body;
	var sql="update kid_product set ?"
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});


mudule.exports=router;