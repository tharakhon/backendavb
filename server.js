const express = require('express');
const mysql = require('mysql');
const app = express();
app.use(express.json());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password:'',
    database:'webavb',
    port:'3307'
})

connection.connect((err) => {
    if(err){
        console.log('Error connecting to Mysql database = ', err)
        return;
    }
    console.log('Mysql successfully connected');
})

app.post("/create", async (req,res) => {
    const {username, email , tel} = req.body;

    try{
        connection.query(
            "INSERT INTO user(username,email, tel) VALUES(?,?,?)",
            [username, email, tel],
            (err, results, fields) => {
                if(err){
                    console.log("Error while inserting a user into the database", err);
                    return res.status(400).send();
                }
                return res.status(201).json({message:"New user successfully created!"});
            }
        )
    }catch(err){
        console.log(err);
        return res.status(500).send();
    }
})

app.get("/read", async (req,res) => {
    try {
        connection.query("SELECT * FROM user", (err,results,fields) =>{
            if(err){
                console.log(err);
                return res.status(400).send();
            }
            res.status(200).json(results)
        })
    }catch(err){
        console.log(err);
        return res.status(500).send();
    }

})

//Read single user from db
app.get("/read/single/:email", async (req,res) => {
    const email = req.params.email;

    try {
        connection.query("SELECT * FROM user WHERE email = ?", [email] , (err,results,fields) =>{
            if(err){
                console.log(err);
                return res.status(400).send();
            }
            res.status(200).json(results)
        })
    }catch(err){
        console.log(err);
        return res.status(500).send();
    }

})

// UPDATE data
app.patch("/update/:email", async (req,res) => {
    const email = req.params.email;
    const newUsername = req.body.newUsername;
    const newTel = req.body.newTel;

    try {
        connection.query("UPDATE user SET username = ? ,tel = ? WHERE email = ?", [newUsername,newTel,email] , (err,results,fields) =>{
            if(err){
                console.log(err);
                return res.status(400).send();
            }
            res.status(200).json({message: "User username and tel update successfully"})
        })
    }catch(err){
        console.log(err);
        return res.status(500).send();
    }
})

app.listen(5000, () => console.log('Server is running on port 5000'));
