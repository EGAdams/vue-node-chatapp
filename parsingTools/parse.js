console.log( "starting parse... \n" );
const   fs              = require( 'fs' );
const EventEmitter      = require( 'events' );
const { parse }         = require('path');
var     RuleParser          = require( "./RuleParser" );
const { exit } = require('process');

var sourceFile          = 'June2AfterHaystackNeedleFix.txt';

// const   ObjectsToCsv    = require( 'objects-to-csv' );

    // check parser rules array and exit when it is finished populating

function checkRuleArrayContents( parser ) {
    var debug = true;

    setTimeout( function() {
        if ( debug ) {
            trace( "checking rules array contents..." );
        }
        //checkRuleArrayContents( parser );
        return;

    }, 2000);

    
    if ( debug ) {
        trace( "check rule array contents called..." );
    }
    
    if ( parser == null || parser == undefined ) {
        if ( debug ) {
            trace( "parser is not valid.  exiting function..." );
        }
        return;
    } else {
        if ( debug ) {
            trace( "parser is valid" );
            trace( "parser.rules.length = [" + parser.rules.length + "]");
        }
        if ( parser.rules.length == 0 ) {
            if ( debug ) {
                trace( "no data.  returning..." );
            }
            return;
        }
        
    }
    if ( parser.rules == undefined || parser.rules == null ) {

        if ( debug ) {
            trace( "returning from check rule array contents.  parser rules is not ready yet." );
        }
        
    } else {
        if ( debug ) {
            trace( "entering for loop.." );
        }
        
        for ( var rule in parser.rules ) {
            if ( rule.dateAdded == undefined || rule.dateAdded == null ) {
                if ( debug ) {
                    trace( "found null or undefined in rule.dateAdded.  not emitting event indicating we are not done filling this array yet" );
                }
            }
            if ( debug ) {
                trace( "parser.rules has been populated.  emitting event to indicate that we are done populating this array" );
                parser.emitter.emit( "arrayDateTimeFull" );

            }
        }
    }    
}

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

class MyEmitter extends EventEmitter {
  foo() {
    this.emit('test');
  }
}

var debug = true;
function trace( text ) {
    console.log( text );
}


if ( debug ) {
    trace( "calling readfile..." );
}

var parser  = null;
fs.readFile( sourceFile, function( err, data ) {
    if ( debug ) {
        trace( "creating new parser..." );
    }
    
    parser = new RuleParser( data );
    if ( debug ) {
        trace( "calling parser.parseData from parse.js..." );
    }
    
    parser.parseData( err, data );

});



 

