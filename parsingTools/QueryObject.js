
var debug = true;
function trace( text ) {
    console.log( text );
}

function QueryObject( emitterArg ) {
    
    this.emitter = emitterArg;
    if ( debug ) {
        trace( "if this doesn't work, set this to self." );
    }
    

    this.parseQuery = {}
    
    if ( debug ) {
        trace( "query object created." );
    }
    
}

module.exports = QueryObject;