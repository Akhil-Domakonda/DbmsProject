const express =require ('express');
const mysql = require('mysql');
const bp =require('body-parser');
const ejs=require('ejs');

const app =express();
app.set('view engine','ejs');
app.use(express.static(__dirname + '/public'));  
app.use(bp.urlencoded({ extended: true }));

// create connection
const db=mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password :'akhil12345',
    database : 'fallsem2project'
}); 

//connect
db.connect(function(err){
    if (err){
        throw err;
    }
    console.log("My sql connected...");
});

app.get('/',function(req,res){
    res.render("landing");
});

app.get('/options',(req,res)=>{
    res.render("options");
});

app.get('/booking',(req,res)=>{
    res.render("booking");
});

app.post('/booking',(req,res)=>{ 
    let sql="INSERT into passenger_flight values ('"+req.body.passportNumber+"','"+ req.body.flightNumber +"');";
    db.query(sql,(err,result) =>{
        if(err) {
            return res.send(err)
        }
        else{
             res.redirect("/success");
        }
    });
})

app.get('/passengerInfo',(req,res)=>{
    let sql="SELECT * FROM passenger_details ;";
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("passengerInfo",{data:result});
        }
    });
});
app.post('/filter1',(req,res)=>{
    let sql="SELECT * FROM passenger_details where gender='"+req.body.gender+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("passengerInfo",{data:result});
        }
    });
});
app.post('/filter2',(req,res)=>{
    let sql="SELECT * FROM passenger_details where passport_id='"+req.body.passportId+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("passengerInfo",{data:result});
        }
    });
});
app.post('/filter3',(req,res)=>{
    let sql="SELECT * FROM passenger_details where full_name='"+req.body.Full_name+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("passengerInfo",{data:result});
        }
    });
});
app.get('/staffInfo',(req,res)=>{
    let sql="SELECT * FROM staff_info ;";
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("staffInfo",{data:result});
        }
    });
});
app.post('/filter4',(req,res)=>{
    let sql="SELECT * FROM staff_info where gender='"+req.body.gender+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("staffInfo",{data:result});
        }
    });
});
app.post('/filter5',(req,res)=>{
    let sql="SELECT * FROM staff_info where department_id='"+req.body.dept_id+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("staffInfo",{data:result});
        }
    });
});
app.post('/filter6',(req,res)=>{
    let sql="SELECT * FROM staff_info where full_name='"+req.body.Full_name+"';" ;
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render("staffInfo",{data:result});
        }
    });
});
app.get('/airlines',(req,res)=>{
    let sql= "SELECT * from airlines ;";
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render('airlines',{data:result});
        }
    });
});
app.get('/flight',(req,res)=>{
    let sql= "SELECT * from flight ;";
    db.query(sql,(err,result)=>{
        if(err){
            return res.send(err);
        }
        else{
            res.render('flight',{data:result});
        }
    });
});
app.get('/success',(req,res)=>{
    res.render("success");
});

//hosting server
app.listen('3000',function(){
    console.log('Server started on port 3000');
}); 