const express = require("express");
var bodyParser = require('body-parser')
const app = express();
const mysql = require("mysql");
const cors = require("cors");
const multer = require('multer')



app.use(cors());
app.use(express.json());
app.use(express.static('public'));

const db = mysql.createConnection({
  user: "root",
  host: "localhost",
  password: "",
  database: 'webavb',
  port: '3307'
});
app.use(bodyParser.json());

// app.post('/api/saveUser', (req, res) => {
//   const { fullname, email, tel } = req.body;

//   const sql = 'INSERT INTO user (name, email, tel) VALUES (?, ?, ?)';
//   db.query(sql, [fullname, email, tel], (err, result) => {
//     if (err) {
//       console.error('Error saving user:', err); // Add this line
//       res.status(500).send('Error saving user');
//     } else {
//       console.log('User saved successfully');
//       res.status(200).send('User saved successfully');
//     }
//   });
// });
// app.post('/login', jsonParser,function (req, res, next) {
//   connection.execute(
//     'SELECT * FROM user WHERE email=?',
//     [req.body.email],
//     function (err, users, fields) {
//       if (err) {
//         res.json({ status: 'error', message: err });
//         return
//       }if(users.length == 0){
//         res.json({status: 'error', message: 'no user found' });
//         return
//       }
//         if(isLogin){
//           //token คือ jwt.sign(payload มีiat=issue at timeหรือ เวลาสร้างด้วย, secretOrPrivateKey, [options, callback])
//           var token = jwt.sign({ email: users[0].email }, secret);
//           //โครงสร้าง res.json(body)
//           res.json({status : 'ok',message:'login success',token})
//         }else{
//           res.json({status : 'error',message:'login failed'})
//         }

//     });
// })

// app.post('/authen', jsonParser,function (req, res, next) {
//   try{
//     const token = req.headers.authorization.split(' ')[1]
//     var decoded = jwt.verify(token, secret);console.log(decoded)
//     if(!decoded.email)
//     {
//       res.json({status :'error',message:err.message})
//       return
//     }
//     res.json({status :'ok',decoded})
//   }catch(err){
//     res.json({status :'error',message:err.message})
//   }
// })

// app.post('/logfile', jsonParser,function (req, res, next) {
//   const token = req.headers.authorization.split(' ')[1]
//   var decoded = jwt.verify(token, secret);console.log(decoded)
//   connection.execute(
//     'INSERT INTO logfile (email, status ) VALUES (?,?)',
//     [decoded.email,req.body.status],
//     function (err, results, fields) {
//       if (err) {
//         res.json({ status: 'error', message: err })
//         return
//       }
//       res.json({ status: 'ok', message: "Success" })
//     });
// })
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    return cb(null, "public/image")
  },
  filename: function (req, file, cb) {
    return cb(null, `${req.body.bank_codename}_${file.originalname}`)
  }
})

const upload = multer({ storage: storage })

app.post('/bank_create', upload.single('bank_image'), (req, res) => {
  const sql = "INSERT INTO bank_master (`bank_email`, `bank_codename`, `bank_telephone`, `bank_address`, `bank_name`, `bank_latitude`, `bank_longitude`, `bank_image`, `bank_bronze`, `bank_silver`, `bank_gold`, `bank_platinum`, `rank_id`) VALUES (?)";
  const values = [
    req.body.bank_email,
    req.body.bank_codename,
    req.body.bank_telephone,
    req.body.bank_address,
    req.body.bank_name,
    req.body.bank_latitude,
    req.body.bank_longitude,
    req.file.filename,
    req.body.bank_bronze,
    req.body.bank_silver,
    req.body.bank_gold,
    req.body.bank_platinum,
    '1',
  ]

  db.query(sql, [values], (err, result) => {
    if (err) return res.json({ Error: "Error singup query" });
    return res.json({ Status: "Success" });
  })
})

app.get("/user/:email", (req, res) => {
  const email = req.params.email;
  db.query("SELECT * FROM user_master WHERE email = ?", [email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.post("/bank_product", upload.single('product_image'), (req, res) => {
  const sql = "INSERT INTO bank_product  (`bank_codename`, `product_name`, `product_image`, `product_type`, `product_type2`, `product_type3`, `product_type4`, `product_quantity`, `product_unit`, `product_details`, `product_price`) VALUES (?)";
  const values = [
    req.body.bank_codename,
    req.body.product_name,
    req.file.filename,
    req.body.product_type,
    req.body.product_type2,
    req.body.product_type3,
    req.body.product_type4,
    req.body.product_quantity,
    req.body.product_unit,
    req.body.product_details,
    req.body.product_price,
  ]

  db.query(sql, [values], (err, result) => {
    if (err) return res.json({ Error: "Error singup query" });
    return res.json({ Status: "Success" });
  })

});

app.post("/userbank_exchange", upload.single('userbank_productimage'), (req, res) => {
  const sql = "INSERT INTO userbank_exchange  (`orderExchange_id`,`bank_name`, `userbank_email`, `userbank_productname`, `userbank_productimage`, `userbank_producttype1`, `userbank_productquantity`, `userbank_productdetails`, `userbank_unit`,`userbank_status`,`order_exchange`,`order_exchange_pickup`) VALUES (?)";
  const values = [
    req.body.orderExchange_id,
    req.body.bank_name,
    req.body.userbank_email,
    req.body.userbank_productname,
    req.file.filename,
    req.body.userbank_producttype1,
    req.body.userbank_productquantity,
    req.body.userbank_productdetails,
    req.body.userbank_unit,
    'รอการตรวจสอบ',
    'รายการเพื่อแลกเปลี่ยน',
    'รอการรีวิวทรัพยากร'
  ]
  db.query(sql, [values], (err, result) => {
    if (err) return res.json({ Error: "Error singup query" });
    return res.json({ Status: "Success" });
  })
});
app.post("/order_request", (req, res) => {
  const order_id = req.body.order_id;
  const bank_name = req.body.bank_name;
  const userbank_email = req.body.userbank_email;
  const order_quantity = req.body.order_quantity;
  const order_borrowDate = req.body.order_borrowDate;
  const order_returnDate = req.body.order_returnDate;
  const order_status = "รอการตรวจสอบ";
  const order_rental = "รายการเพื่อเช่าหรือยืม";
  const order_rental_pickup = "รอการรีวิวทรัพยากร";

  db.query(
    "INSERT INTO order_request (order_id,bank_name, userbank_email,order_quantity,order_borrowDate, order_returnDate,order_status,order_rental,order_rental_pickup) VALUES (?,?,?,?,?,?,?,?,?)",
    [
      order_id,bank_name, userbank_email,order_quantity,order_borrowDate, order_returnDate,order_status,order_rental,order_rental_pickup
    ],
    (err, result) => {
      if (err) {
        console.log(err);
        return res.status(500).json({ error: "Internal server error" });
      } else {
        res.send("Values Inserted");
      }
    }
  );
});

app.post("/order_sale", (req, res) => {
  const order_product_id = req.body.order_product_id;
  const order_sale_bankname = req.body.order_sale_bankname;
  const userbank_order_sale = req.body.userbank_order_sale;
  const order_product_quantity = req.body.order_product_quantity;
  const order_product_unit = req.body.order_product_unit;
  const order_product_date = req.body.order_product_date;
  const order_product_price = req.body.order_product_price;
  const order_product_status = "รอการตรวจสอบ";
  const order_sale = "รายการเพื่อการซื้อขาย";
  const order_sale_pickup = "รอการรีวิวทรัพยากร";
  db.query(
    "INSERT INTO order_sale (order_product_id, order_sale_bankname,userbank_order_sale,order_product_quantity,order_product_unit, order_product_date,order_product_price,order_product_status,order_sale,order_sale_pickup) VALUES (?,?,?,?,?,?,?,?,?,?)",
    [
      order_product_id,order_sale_bankname, userbank_order_sale,order_product_quantity,order_product_unit,order_product_date, order_product_price,order_product_status,order_sale,order_sale_pickup
    ],
    (err, result) => {
      if (err) {
        console.log(err);
        return res.status(500).json({ error: "Internal server error" });
      } else {
        res.send("Values Inserted");
      }
    }
  );
});

app.post("/order_exchangeRequest", (req, res) => {
  const orderExchange_id = req.body.orderExchange_id;
  const bank_name = req.body.bank_name;
  const userbank_email = req.body.userbank_email;
  const orderExchange_quantity = req.body.orderExchange_quantity;
  const orderExchange_borrowDate = req.body.orderExchange_borrowDate;

  db.query(
    "INSERT INTO orderexchage_request (orderExchange_id,bank_name, userbank_email,orderExchange_quantity,orderExchange_borrowDate) VALUES (?,?,?,?,?)",
    [
      orderExchange_id,bank_name, userbank_email,orderExchange_quantity,orderExchange_borrowDate
    ],
    (err, result) => {
      if (err) {
        console.log(err);
        return res.status(500).json({ error: "Internal server error" });
      } else {
        res.send("Values Inserted");
      }
    }
  );
});

app.post("/create", (req, res) => {
  const image = req.body.image;
  const email = req.body.email;
  const fullname = req.body.fullname;
  const tel = req.body.tel;
  const rank_id = '1';
  db.query(
    "INSERT INTO user_master (image,email,fullname , tel,rank_id) VALUES (?,?,?,?,?)",
    [image, email, fullname, tel, rank_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send("Values Inserted");
      }
    }
  );
});

app.post("/bookmark", (req, res) => {
  const bookmark_email =  req.body.bookmark_email;
  const bookmark_bankname = req.body.bookmark_bankname;
  const bookmark_members = req.body.bookmark_members;
  const bookmark_codename = req.body.bookmark_codename;
  const bookmark_image = req.body.bookmark_image;
  const bookmark_lat = req.body.bookmark_lat;
  const bookmark_lon = req.body.bookmark_lon;
  const bookmark_rank = req.body.bookmark_rank;
  const bookmark_rating = req.body.bookmark_rating;
  db.query(
    "INSERT INTO bookmark (bookmark_email,bookmark_bankname , bookmark_members, bookmark_codename,bookmark_image,bookmark_lat,bookmark_lon,bookmark_rank,bookmark_rating) VALUES (?,?,?,?,?,?,?,?,?)",
    [bookmark_email,bookmark_bankname , bookmark_members, bookmark_codename,bookmark_image,bookmark_lat,bookmark_lon,bookmark_rank,bookmark_rating],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send("Values Inserted");
      }
    }
  );
});

app.delete("/deletebookmark", (req, res) => {
  const bookmark_email = req.body.bookmark_email;
  const bookmark_bankname = req.body.bookmark_bankname;

  db.query(
    "DELETE FROM bookmark WHERE bookmark_email = ? AND bookmark_bankname = ?",
    [bookmark_email, bookmark_bankname],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Error deleting bookmark");
      } else {
        res.send("Bookmark deleted successfully");
      }
    }
  );
});

app.get("/readimage/:email", async (req, res) => {
  const email = req.params.email;
  db.query("SELECT image FROM user_master WHERE email = ?", [email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/bookmark/:bookmark_email", async (req, res) => {
  const bookmark_email = req.params.bookmark_email;
  db.query("SELECT * FROM bookmark WHERE bookmark_email = ?", [bookmark_email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showproduct/:email", (req, res) => {
  const email = req.params.email;
  if (!email) {
    return res.status(400).send("Email parameter is missing.");
  }
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename  WHERE bank_email = ? ", [email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser/:bank_name", (req, res) => {
  const bank_name = req.params.bank_name
  db.query("SELECT bank_product.* FROM   bank_master JOIN bank_product ON bank_master.bank_codename = bank_product.bank_codename where bank_name = ? ", [bank_name], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.get("/showProductUser1/:id", (req, res) => {
  const product_id = req.params.id;
  db.query("SELECT bank_product.* FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename  WHERE product_id = ?", [product_id], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.get("/showProductUser2/:bank_name", (req, res) => {
  const bank_name = req.params.bank_name;
  
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_request ON order_request.order_id = bank_product.product_id JOIN user_master ON user_master.email = order_request.userbank_email WHERE order_request.bank_name = ?", [bank_name], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser3/:bank_name", (req, res) => {
  const bank_name = req.params.bank_name;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN orderexchage_request ON orderexchage_request.orderExchange_id = bank_product.product_id JOIN user_master ON user_master.email = orderexchage_request.userbank_email JOIN userbank_exchange ON userbank_exchange.orderExchange_id = orderexchage_request.orderExchange_id WHERE orderexchage_request.bank_name = ?", [bank_name], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser4/:order_sale_bankname", (req, res) => {
  const order_sale_bankname = req.params.order_sale_bankname;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_sale ON order_sale.order_product_id = bank_product.product_id JOIN user_master ON user_master.email = order_sale.userbank_order_sale  WHERE order_sale.order_sale_bankname = ?", [order_sale_bankname], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser5/:order_request_id", (req, res) => {
  const order_request_id = req.params.order_request_id;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_request ON order_request.order_id = bank_product.product_id WHERE order_request_id = ?", [order_request_id], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser6/:exchange_id", (req, res) => {
  const exchange_id  = req.params.exchange_id;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN orderexchage_request ON orderexchage_request.orderExchange_id = bank_product.product_id JOIN userbank_exchange ON userbank_exchange.orderExchange_id = orderexchage_request.orderExchange_id WHERE exchange_id  = ?", [exchange_id], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.get("/showProductUser7/:order_sale_id", (req, res) => {
  const order_sale_id = req.params.order_sale_id;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_sale ON order_sale.order_product_id = bank_product.product_id  WHERE order_sale_id = ?", [order_sale_id], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
// app.get("/showbank", async (req, res) => {
//   db.query("SELECT * FROM bank_master ", (err, result) => {
//     if (err) {
//       console.log(err);
//       res.status(500).send("Internal Server Error");
//     } else {
//       if (result.length > 0) {
//         res.send(result);
//       } else {
//         res.send("No data found in the database.");
//       }
//     }
//   });
// });
app.get("/showcodename/:email", async (req, res) => {
  const email = req.params.email;
  db.query("SELECT bank_codename,bank_name FROM bank_master where bank_email = ?", [email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.post("/RegisterUserForBank", (req, res) => {
  const userBank_email = req.body.userBank_email;
  const userBank_bankName = req.body.userBank_bankName;
  const rank_id = '1';
  db.query(
    "INSERT INTO userinbank (userBank_email,userBank_bankName,rank_id) VALUES (?,?,?)",
    [userBank_email, userBank_bankName, rank_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send("Values Inserted");
      }
    }
  );
});
app.get("/CheckUserInBank/:email", async (req, res) => {
  const userBank_email = req.params.email;
  db.query("SELECT * FROM userinbank JOIN bank_master ON userinbank.userBank_bankName = bank_master.bank_name where userBank_email = ?", [userBank_email], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.get("/showUserInBank/:userBank_bankName", async (req, res) => {
  const userBank_bankName = req.params.userBank_bankName;
  db.query("SELECT * FROM userinbank JOIN user_master JOIN rank_master ON user_master.email = userinbank.userBank_email and rank_master.rank_id =userinbank.rank_id where userBank_bankName = ?", [userBank_bankName], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.get("/showcountuser", async (req, res) => {
  db.query("SELECT *, COUNT(DISTINCT userinbank.userBank_id) AS member_count FROM bank_master LEFT JOIN userinbank ON bank_master.bank_name = userinbank.userBank_bankName LEFT JOIN bank_review ON bank_review.bank_codename = bank_master.bank_codename  JOIN rank_master ON bank_master.rank_id = rank_master.rank_id  GROUP BY bank_master.bank_name", (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
app.get("/notifications/:bank_name", async (req, res) => {
  const userEmail = req.params.bank_name;
  db.query(
    "SELECT *, COUNT(order_request.order_id) AS order_count,COUNT(userbank_exchange.orderExchange_id) AS order_exchange_count,COUNT(order_sale.order_product_id) AS order_sale_count,(SELECT COUNT(order_request.order_id) FROM order_request WHERE order_request.order_id = bank_product.product_id AND order_request.order_status = 'รอการตรวจสอบ') + (SELECT COUNT(userbank_exchange.orderExchange_id) FROM userbank_exchange WHERE userbank_exchange.orderExchange_id = bank_product.product_id AND userbank_exchange.userbank_status = 'รอการตรวจสอบ') + (SELECT COUNT(order_sale.order_product_id) FROM order_sale WHERE order_sale.order_product_id = bank_product.product_id AND order_sale.order_product_status = 'รอการตรวจสอบ') AS combined_count FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename LEFT JOIN order_request ON order_request.order_id = bank_product.product_id AND order_request.order_status = 'รอการตรวจสอบ' LEFT JOIN userbank_exchange ON userbank_exchange.orderExchange_id = bank_product.product_id AND userbank_exchange.userbank_status = 'รอการตรวจสอบ' LEFT JOIN orderexchage_request ON userbank_exchange.orderExchange_id = orderexchage_request.orderExchange_id LEFT JOIN order_sale ON order_sale.order_product_id = bank_product.product_id AND order_sale.order_product_status = 'รอการตรวจสอบ' JOIN user_master ON user_master.email = order_request.userbank_email OR user_master.email = orderexchage_request.userbank_email OR user_master.email = order_sale.userbank_order_sale WHERE bank_master.bank_name = ? GROUP BY bank_product.product_id;",
    [userEmail],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/notifications_bank/:bank_name", async (req, res) => {
  const userEmail = req.params.bank_name;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_request ON order_request.order_id = bank_product.product_id JOIN user_master ON user_master.email = order_request.userbank_email WHERE order_request.bank_name = ?",
    [userEmail],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/notifications_bank1/:bank_name", async (req, res) => {
  const userbank_name = req.params.bank_name;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN orderexchage_request ON orderexchage_request.orderExchange_id = bank_product.product_id JOIN userbank_exchange ON userbank_exchange.orderExchange_id = orderexchage_request.orderExchange_id JOIN user_master ON user_master.email = orderexchage_request.userbank_email WHERE bank_master.bank_name= ?",
    [userbank_name],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/notifications_bank2/:bank_name", async (req, res) => {
  const userbank_name = req.params.bank_name;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_sale ON order_sale.order_product_id = bank_product.product_id JOIN user_master ON user_master.email = order_sale.userbank_order_sale WHERE bank_master.bank_name= ?",
    [userbank_name],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/Inbox/:email", async (req, res) => {
  const userEmail = req.params.email;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_request ON order_request.order_id = bank_product.product_id JOIN user_master ON user_master.email = order_request.userbank_email WHERE user_master.email = ? ",
    [userEmail],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/Inbox1/:email", async (req, res) => {
  const userEmail = req.params.email;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN orderexchage_request ON orderexchage_request.orderExchange_id = bank_product.product_id JOIN userbank_exchange ON userbank_exchange.orderExchange_id = orderexchage_request.orderExchange_id JOIN user_master ON user_master.email = orderexchage_request.userbank_email WHERE user_master.email= ? ",
    [userEmail],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/Inbox2/:email", async (req, res) => {
  const userEmail = req.params.email;
  db.query(
    "SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN order_sale ON order_sale.order_product_id = bank_product.product_id JOIN user_master ON user_master.email = order_sale.userbank_order_sale WHERE user_master.email = ? ",
    [userEmail],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send("Internal Server Error");
      } else {
        if (result.length > 0) {
          res.send(result); // Assuming you want to send the count as a single value
        } else {
          res.send("No data found in the database.");
        }
      }
    }
  );
});

app.get("/showcountuser2", async (req, res) => {
  db.query("SELECT * FROM bank_master JOIN rank_master ON bank_master.rank_id = rank_master.rank_id", (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});

app.post("/Review", upload.single('bank_review_image'),(req,res)=>{ 
  const sql = "INSERT INTO bank_review (`user_email`, `bank_codename`, `rating`, `detail`, `product_id`,`bank_review_image`) VALUES (?)";
  const values = [
    req.body.user_email,
    req.body.bank_codename,
    req.body.rating,
    req.body.detail,
    req.body.product_id,
    req.file.filename,
  ]

  db.query(sql, [values], (err, result) => {
    if (err) return res.json({ Error: "Error singup query" });
    return res.json({ Status: "Success" });
  })
})

app.get("/showReview/:product_id", async (req, res) => {
  const product_id = req.params.product_id;
  db.query("SELECT * FROM bank_product JOIN bank_master ON bank_master.bank_codename = bank_product.bank_codename JOIN bank_review ON bank_review.product_id = bank_product.product_id JOIN user_master ON bank_review.user_email = user_master.email where bank_product.product_id = ?",[product_id], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});


app.post("/Reviewcustom",(req,res) => {
  const user_name = "ฮอลคูล"
  const bank_name= "AVB 2";
  const product_name = "จอบ";
  const product_id = "33";
  const detail = req.body.detail;
  const rating = req.body.rating;
  
  db.query("INSERT INTO review_customer(user_name,bank_name,product_name,product_id,detail,rating)VALUE(?,?,?,?,?,?)",
  [user_name,bank_name,product_name,product_id,detail,rating],
  (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.send("Values Inserted");
    }
  });
});

app.get("/Showreviewcustom/:bank_name",async(req,res)=>{
  const bank_name = req.params.bank_name;
  db.query("SELECT * FROM review_customer JOIN bank_master JOIN bank_product ON review_customer.bank_name=bank_master.bank_name and bank_product.product_id=review_customer.product_id where review_customer.bank_name = ?",[bank_name], (err, result) => {
    if (err) {
      console.log(err);
      res.status(500).send("Internal Server Error");
    } else {
      if (result.length > 0) {
        res.send(result);
      } else {
        res.send("No data found in the database.");
      }
    }
  });
});
// app.post("/create", async (req,res) => {
//     const {username, email , tel} = req.body;

//     try{
//         connection.query(
//             "INSERT INTO user(username,email, tel) VALUES(?,?,?)",
//             [username, email, tel],
//             (err, results, fields) => {
//                 if(err){
//                     console.log("Error while inserting a user into the database", err);
//                     return res.status(400).send();
//                 }
//                 return res.status(201).json({message:"New user successfully created!"});
//             }
//         )
//     }catch(err){
//         console.log(err);
//         return res.status(500).send();
//     }
// })

// app.get("/read", async (req,res) => {
//     try {
//         connection.query("SELECT * FROM user", (err,results,fields) =>{
//             if(err){
//                 console.log(err);
//                 return res.status(400).send();
//             }
//             res.status(200).json(results)
//         })
//     }catch(err){
//         console.log(err);
//         return res.status(500).send();
//     }

// })

// //Read single user from db
// app.get("/read/single/:email", async (req,res) => {
//     const email = req.params.email;

//     try {
//         connection.query("SELECT * FROM user WHERE email = ?", [email] , (err,results,fields) =>{
//             if(err){
//                 console.log(err);
//                 return res.status(400).send();
//             }
//             res.status(200).json(results)
//         })
//     }catch(err){
//         console.log(err);
//         return res.status(500).send();
//     }

// })

// // UPDATE data
// app.patch("/update/:email", async (req,res) => {
//     const email = req.params.email;
//     const newUsername = req.body.newUsername;
//     const newTel = req.body.newTel;

//     try {
//         connection.query("UPDATE user SET username = ? ,tel = ? WHERE email = ?", [newUsername,newTel,email] , (err,results,fields) =>{
//             if(err){
//                 console.log(err);
//                 return res.status(400).send();
//             }
//             res.status(200).json({message: "User username and tel update successfully"})
//         })
//     }catch(err){
//         console.log(err);
//         return res.status(500).send();
//     }
// })
app.put('/updateProduct/:product_id', (req, res) => {
  const product_id = req.params.product_id;
  const {product_name,product_type,product_type2,product_type3,product_quantity,product_unit,product_price} = req.body;
  console.log(req.body);
  db.query(
    `UPDATE bank_product SET product_name = ?, product_type = ?, product_type2 = ?, product_type3 = ?, product_quantity = ?, product_unit = ? ,product_price = ? WHERE product_id = ?`,[product_name,product_type,product_type2,product_type3,product_quantity,product_unit,product_price,product_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});
app.put('/updateStatus/:order_request_id', (req, res) => {
  const order_request_id = req.params.order_request_id;
  const order_status = req.body.order_status;
  console.log(req.body);
  db.query(
    `UPDATE order_request SET order_status = ? WHERE order_request_id = ?`,[order_status,order_request_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});
app.put('/updateStatus1/:exchange_id', (req, res) => {
  const exchange_id = req.params.exchange_id;
  const userbank_status = req.body.userbank_status;
  console.log(req.body);
  db.query(
    `UPDATE userbank_exchange SET userbank_status = ? WHERE exchange_id = ?`,[userbank_status,exchange_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});
app.put('/updateStatus2/:order_sale_id', (req, res) => {
  const order_sale_id = req.params.order_sale_id;
  const order_product_status = req.body.order_product_status;
  db.query(
    `UPDATE order_sale SET order_product_status = ? WHERE order_sale_id = ?`,[order_product_status,order_sale_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});

app.put('/updateStatusSalePickup/:order_sale_id', (req, res) => {
  const order_sale_id = req.params.order_sale_id;
  const order_sale_pickup = req.body.order_sale_pickup;

  db.query(
    `UPDATE order_sale SET order_sale_pickup = ? WHERE order_sale_id = ?`,[order_sale_pickup,order_sale_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});

app.put('/updateStatusExchagePickup/:exchange_id', (req, res) => {
  const exchange_id  = req.params.exchange_id ;
  const order_exchange_pickup = req.body.order_exchange_pickup;
  db.query(
    `UPDATE userbank_exchange SET order_exchange_pickup = ? WHERE exchange_id  = ?`,[order_exchange_pickup,exchange_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});

app.put('/updateStatusRentalPickup/:order_request_id', (req, res) => {
  const order_request_id = req.params.order_request_id;
  const order_rental_pickup = req.body.order_rental_pickup;
  db.query(
    `UPDATE order_request SET order_rental_pickup = ? WHERE order_request_id = ?`,[order_rental_pickup,order_request_id],(err, result) => {
          if (err) {
              console.error('Error updating product:', err.message);
              return res.status(500).send(err.message);
          }

          console.log('Product updated successfully');
          res.json(result);
      }
  );
});


app.listen(5000, () => console.log('Server is running on port 5000'));
