

var Rule        = require( "./Rule"         );    
// var mysqlObject = require( "mysql"          );
const TheEmitter      = require( "./TheEmitter" );

//const DbFactory = require("./DbFactory");

var dateregex   = /(\d\d\d\d-\d\d-\d\d)T(\d\d:\d\d:\d\d)/;
var rules = [];
var rule = new Rule( "89" );
rules.push( rule );
var rule = new Rule( "95" );
rules.push( rule );

const mysql = require('mysql'); // or use import if you use TS
const util = require('util');
const conn = mysql.createConnection({
    host     : '10.170.150.8',
    user     : 'webapp',
    password : 'ASDF2asdf!',
    database : 'fwtACP'
});

// node native promisify
const query = util.promisify( conn.query ).bind( conn );

(async () => {
  try {
    for ( var x=0; x < rules.length; x++ ) {
        console.log( "populating rule " + rules[ x ].id + " ..." );
        results = await query("select min( DateAdded ) from Alert where RuleID='" + rules[ x ].id + "'");
        var resultString    = JSON.stringify( results );
        var theDatematch    = resultString.match( dateregex );
        console.log( "theDatematch[ 1 ] = [" + theDatematch[ 1 ] + "]  theDatematch[ 2 ] = [" + theDatematch[ 2 ] + "]" );
        rules[ x ].dateAdded = theDatematch[ 1 ];
        rules[ x ].timeAdded = theDatematch[ 2 ];
    }
    //const rows = await query( "select min( DateAdded ) from Alert where RuleID='95'" );
    // console.log(rows);
  } finally {
    conn.end();
  }
})()

console.log( rules.toString());

// // var rule = new Rule( "97" );
// // rules.push( rule );
// // var rule = new Rule( "98" );
// // rules.push( rule );
// // var rule = new Rule( "99" );
// // rules.push( rule );
// // var rule = new Rule( "100" );
// // rules.push( rule );
// // var rule = new Rule( "128" );
// // rules.push( rule );
// // var rule = new Rule( "160" );
// // rules.push( rule );

// var mysqlConfig  = {
//     host     : '10.170.150.8',
//     user     : 'webapp',
//     password : 'ASDF2asdf!',
//     database : 'fwtACP'
// };

// var dataBaseObject = makeDb( mysqlConfig );

// // const rules = await db.query( 'SELECT * FROM rules WHERE id = 1' );
// var emitter = new TheEmitter();
// emitter.on('event', function(a, b) {
//     console.log( a, b );
// });    
// emitter.on( 'log', (code, msg)=> console.log(`Got ${code} and ${msg}`));

// emitter.on( 'gotDateAndTime', function( dateString, timeString ) {
//     console.log( "emitter called!" );
//     console.log(`Got ${ dateString } and ${ timeString }`);
    
// });


// console.log( "finished for loop, closing connection..." );
// mysqlConnection.end();


// function printArrayContents( rules ) {
//     console.log( "inside printArrayContents..." );
//     for ( var i=0; i < rules.length; i++ ) {
//         if( rules[ i ].dateAdded != null || rules[ i ].dateAdded != undefined ) {
//             console.log( rules[ i ].dateAdded );
//         }
//     }
// }



