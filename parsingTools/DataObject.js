/*
 *  The DataObject
 */
var mysqlObject     = require( 'mysql' );
const Rule = require('./Rule');
const QueryObject = require( './QueryObject' );
const { exit } = require('process');
var debug           = true;

var debug = true;
function trace( text ) {
    console.log( text );
}

function DataObject( emitterArg ) {
    debug = false;
    if ( !emitterArg ) {
        throw new Error( "*** ERROR: the data object needs an emitter to function in this design ***" );
    } else {
        if ( debug ) {
            trace( "*** PASSED: data object was passed a legitimate emitter object. ***" );
        }
        
    }

    var self = this;
    this.emitter = emitterArg;
    this.tempRule = new Rule();
    var dateregex       = /(\d\d\d\d-\d\d-\d\d)T(\d\d:\d\d:\d\d)/;
    var alertcountregex = /:(\d+)/;
    this.connection = mysqlObject.createConnection({
        host     : '10.170.150.8',
        user     : 'webapp',
        password : 'ASDF2asdf!',
        database : 'fwtACP'
    });
    this.currentRule = new Object();

    if ( debug ) {
        trace( "checking connection..." );
    }

    this.connection.connect( function( err ) {
        if ( err ) throw err;
            if ( debug ) {
                trace( "*** PASSED: the database connection looks good ***" );
                self.emitter.emit( 'gotValidConnection' /* , arg1, arg2, argn... */ );
            }
            
        });
    
    this.populateCountAndTime = function( rule ) {

        var debug = false;
        function trace( text ) {
            console.log( text );
        }
        if ( !this.connection ) {
            throw new Error( "*** ERROR:  the connection is invalid ***" );
        } else {
            if ( debug ) {
                trace( "*** PASSED: the database connection is now valid ***" );
            }
            
        }

        if ( debug ) {
            console.log( "data object populate count and time method called..." );
        }
        
        self.currentRule = rule;
        // const { trace } = require('console');
        if ( debug ) {
            trace( "executing query: select min( DateAdded ) from Alert where RuleID='" + rule.id + "'" );
        }
        
        this.connection.query( "select min( DateAdded ) from Alert where RuleID='" + rule.id + "'", function ( error, result, fields ) {
        
        //  this.connection.query("select min( DateAdded ) from Alert where RuleID='89'", function (err, result, fields) {
        //  if ( err ) throw err;
        //  console.log( fields );
 
            if ( debug ) {
                trace( "inside anonymous function comming back from .query(..." );
            }
            
            if ( error ) throw error;
            var resultString    = result[ 0 ];
            if ( debug ) {
                trace( "checking result string..." );
            }
            
            if ( resultString == null ) {
                if ( debug ) { trace( "result is null!" ); }
            } else {
                var resultString    = JSON.stringify( result );
                var theDatematch    = resultString.match( dateregex );
                if ( theDatematch != null ) {
                    rule.dateAdded      = theDatematch[ 1 ];
                    rule.timeAdded     = theDatematch[ 2 ];
                    console.log("rule: [" + rule.id + "] " + theDatematch[ 1 ] + " " + theDatematch[ 2 ]);
                    rule.dateAdded = theDatematch[ 1 ];
                    rule.timeAdded = theDatematch[ 2 ];
                      
                    if ( debug ) {
                        trace( "emitting gotTimeAndDate!" );
                        trace( "rule.id = [" + rule.id + "]");
                        trace( "rule.dateAdded = [" + rule.dateAdded + "]");
                        trace( "rule.timeAdded = [" + rule.timeAdded + "]");
                    }
                    self.emitter.emit( 'gotTimeAndDate', rule.id, rule.dateAdded, rule.timeAdded );
                }
            }
        });
    };

    this.getAlertCount = function( rule ) {
        const { trace } = require( 'console' );
        this.connection.query( "select count( * ) from Alert where RuleID = '" + rule.id + "'", function ( error, results, fields ) {
            if (error) throw error;
            var resultString    = results[ 0 ];
            if ( resultString == null ) {
                if ( debug ) { trace( "results are null!" ); }
            } else {
                var resultString    = JSON.stringify(results);
                if ( resultString != null ) {
                    var countMatch = resultString.match( alertcountregex );
                    rule.alertsSinceAdded = countMatch[ 1 ];
                    console.log("rule: [" + rule.id + "] number of alerts since rule added: [" + rule.alertsSinceAdded + "]" );
                }
            }
        });
    }

    this.disconnect = function() {
        this.connection.end();
    };

    if ( debug ) {
        trace( "new DataObject created." );
    }
    
};

module.exports = DataObject;
