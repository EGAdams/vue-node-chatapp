var TheEmitter = require( "./TheEmitter" );

var emitter = new TheEmitter();
emitter.on('event', function(a, b) {
    console.log( a, b );
});    
emitter.on( 'log', (code, msg)=> console.log(`Got ${code} and ${msg}`));

emitter.on( 'gotDateAndTime', ( ruleId, dateString, timeString ) => 
    console.log(`Got ${ ruleId }, ${ dateString } and ${ timeString }`)
    
);

emitter.emit( 'log', "code01", "parser finished building rules." );



