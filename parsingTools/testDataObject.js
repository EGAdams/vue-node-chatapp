const DataObject = require('./DataObject');
var EventEmitter = require( "events");
var Rule = require( "./Rule" );

var debug = true;
function trace( text ) {
    console.log( text );
}


var emitter = new EventEmitter();
emitter.on('gotTimeAndDate', function( id, date, time ) {
    console.log("emitter.on gotTimeAndDate called: " + id + ", " + date + ", " + time );
    if ( debug ) {
        trace( "exiting process..." );
        process.exit();
    }
    
}); 

var dataObject = new DataObject( emitter );

    // on got valid connection

emitter.on('gotValidConnection', function() {
    if ( debug ) {
        trace( "got valid connection.  calling populate count and time..." );
    }
    var rule = new Rule( "89" );
    dataObject.populateCountAndTime( rule );
});
    

