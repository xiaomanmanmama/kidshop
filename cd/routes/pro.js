const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
router.post("/v1/reguser",(req,res)=>{
	var obj=req.body;
	var sql="insert into kid_user set ?";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});
router.get("/v1/login/:uname&:upwd",(req,res)=>{
	var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	var sql="select * from kid_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1")
		}else{
			res.send("0")
		}
	});
});

router.get("/v1/queryuser/:uid",(req,res)=>{
	var $uid=req.params.uid;
	var sql="select * from kid_user where uid=?";
	pool.query(sql,[$uid],(err,result)=>{
		//if(err) throw err;
		if(result.length>0){
			res.send(result)
		}else{
			res.send("0")
			}
	});
});

router.delete("/v1/deleteuser/:uid",(req,res)=>{
	var $uid=req.params.uid;
	var sql="delete from kid_user where uid=?";
	pool.query(sql,[$uid],(err,result)=>{
		if(err) throw err;
		res.send("1")
	});
});

router.put("/v1/updteuser",(req,res)=>{
	var $uid=req.body.uid;
	var $upwd=req.body.upwd;
	var $email=req.body.email;
	var $phone=req.body.phone;
	var $sex=req.body.sex;
	var sql="update kid_user set ? where uid=?";
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		res.send("1");
	});
});

router.get("/v1/userlist",(req,res)=>{
	var sql="select * from kid_user"
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		res.send(result);
	});
});


module.exports=router;

