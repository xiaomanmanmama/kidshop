const express=require('express');
const bodyParser=require('body-parser');
const pro=require('./routes/pro.js');
const pru=require('./routes/pru.js');
var app=express();
app.listen(8080);
app.use( express.static('public') );
app.use(bodyParser.urlencoded({
  extended:false
}));
app.use('/pro',pro);
app.use('/pru',pro);
