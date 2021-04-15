
var DataObject = require( "./DataObject" );


Object.defineProperty(global, '__stack', {
get: function() {
        var orig = Error.prepareStackTrace;
        Error.prepareStackTrace = function(_, stack) {
            return stack;
        };
        var err = new Error;
        Error.captureStackTrace(err, arguments.callee);
        var stack = err.stack;
        Error.prepareStackTrace = orig;
        return stack;
    }
});

Object.defineProperty(global, '__line', {
get: function() {
        return __stack[1].getLineNumber();
    }
});

Object.defineProperty(global, '__function', {
get: function() {
        return __stack[2].getFunctionName();
    }
});

Object.defineProperty(global, '__zero', {
get: function() {
        return __stack[0].getFunctionName();
    }
});

var debug = true;
function trace( text ) {
    console.log( __stack[1].getFunctionName() + " :" + __stack[1].getLineNumber() + " " + text );
}

class ArrayTool {
 
    constuctor( parserArg, emitterArg ) {
        if ( debug ) {
            trace( "creating ArrayTool object..." );
        }
        
        if ( emitterArg == undefined || emitterArg == null ) {
            throw new Error( "*** ERROR: the ArrayTool object needs an emitter to function in this design" ); 
        }
        
        if ( !emitterArg ) {
            throw new Error( "*** ERROR: the ArrayTool object needs an emitter to function in this design" ); 
        }
        this.emitter = emitterArg;
    }
    
    populateData( rules ) {
        if ( debug ) {
            trace( "array tool populateData() called..." );
        }

        var dataObject = new DataObject( this.emitter );
        if ( rules != undefined ) {
            for ( var x = 0; x < rules.length - 1; x++ ) {
                trace( "rule.id: [" + rules[ x ].id + "]");
                dataObject.populateCountAndTime( rules[ x ] );
                trace( "populating rule [" + rules[ x ]);
                trace( "printing date and time added..." );
                trace( "dataObject.currentRule.timeAdded =  [" + dataObject.currentRule.timeAdded + "]" );
                trace( "dataObject.currentRule.dateAdded =  [" + dataObject.currentRule.dateAdded + "]" );
    
                
            }
        } else {
            if ( debug ) {
                trace( "this parser object is undefined!" );
            }
            
        }

        dataObject.disconnect();
    }

}

module.exports = ArrayTool;
