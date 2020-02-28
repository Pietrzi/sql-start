var mysql = require('mysql');
var faker = require('faker');
 


 
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'learnwithcolt',
  database : 'join_us'
});

// inserting with node
 

// hardcoded
var a = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';
 
connection.query(a, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

// from faker

var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};
 
var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
  if (err) throw err;
  console.log(result);
});
 

// inserting 500 users from faker

var data = [];
for(var i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
 
 
var b = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(b, [data], function(err, result) {
  console.log(err);
  console.log(result);
});
 
connection.end();