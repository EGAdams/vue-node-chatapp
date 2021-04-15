
var Rule            = require( "./Rule"         );
var EventEmitter    = require( "events"         );
const DataObject    = require( "./DataObject"   );
const { exit }      = require( "process"        );
const ObjectsToCsv  = require( 'objects-to-csv' );
const mysql         = require( 'mysql'          ); // or use import if you use TS
const util          = require( 'util'           );

function trace( text ) {
    console.log( __stack[2].getFunctionName() + " :" + __stack[1].getLineNumber() + " " + text );
}

function RuleParser( fileArrayArg ) {
    var debug       = true;
    var self        = this;
    this.tempRule   = new Rule();
    this.fileArray  = fileArrayArg;
    this.rules      = [];
    this.ruleq      = [];
    this.ruleqCount = 0;
    this.emitter    = new EventEmitter();
    this.dataObject = new DataObject( this.emitter );

    this.config     = {
        host     : '10.170.150.27',
        user     : 'webapp',
        password : 'ASDF2asdf!',
        database : 'fwtNEWB'
    }

    this.buildRules = function() {
        debug = true;
        trace( "building rules... " );
        console.log( "file array length: " + fileArrayArg.length );
        var done                = false;
        var ruleNumber          = ""
        var nameRegex           = /^Name: (\w+.*)/;
        var ruleregex           = /^Rule (\d+):/;
        var descriptionregex    = /Description: (\w+.*)/;
        var activeregex         = /Active: (\d)/;
        var usersregex          = /Users:/;
        var failregex           = /FAIL:/;
 
        var x = 0;
        while ( !done ) {
            if ( debug ) {
                trace( "entered while...   x=" + x );
            }
            
            if ( this.fileArray[ x ] == null ) {
                if ( debug ) {
                    trace( "breaking out of while..." );
                }
                break;
            }
            var nextMatch = this.fileArray[ x ].match( ruleregex );
            if ( nextMatch != null ) {
                if ( debug ) {
                    trace( "next match does not equal null. " );
                }
                
                ruleNumber = nextMatch[1];
                var rule = new Rule( ruleNumber );
                if ( debug ) {
                    trace( "creating rule: [" + ruleNumber + "]  x: [" + x + "]" );
                }
                
                var sawFail = false;
                rule.rawData += this.fileArray[ x++ ];
                nextMatch = this.fileArray[ x ].match( ruleregex );
                while( nextMatch == null ) {
                    var descriptionmatch = this.fileArray[ x ].match( descriptionregex );
                    if ( descriptionmatch ) {
                        rule.description = descriptionmatch[ 1 ];
                    }

                    console.log( "x: [" + this.fileArray[ x ] + "]" );
                    var namematch = this.fileArray[ x ].trim().match( nameRegex );
                    if ( namematch ) {
                        rule.name = namematch[ 1 ];
                    }

                    var activematch = this.fileArray[ x ].match( activeregex );
                    if ( activematch ) {
                        if ( activematch[ 1 ] == "0" ) {
                            rule.active = "NOT ACTIVE";
                        } else {
                            rule.active = "ACTIVE";
                        }    
                    }

                    var failmatch = this.fileArray[ x ].match( failregex );
                    if ( failmatch ) {
                        sawFail = true;
                    }

                    

                    var usersmatch = this.fileArray[ x ].match( usersregex );
                    if ( usersmatch ) {
                        var counter = x;
                        while( !this.fileArray[ ++counter ].includes( "dbSQL" ) ||
                               !this.fileArray[ counter]) {
                            rule.users += this.fileArray[ counter ];
                        }
                        rule.users = rule.users.trim();
                    }

                    rule.rawData += this.fileArray[ x++ ];
                    var nextLine = this.fileArray [ x ];
                    if ( nextLine == null ) {
                        trace( "inside inner while.  nextLine is null.  breaking out of inner while..." );
                        break;
                    }
                    nextMatch = nextLine.match( ruleregex );
                }
                if ( debug ) {
                    trace( "pushing rule number: [" + rule.id + "] into array..." );
                    trace( "pushing rule description: [" + rule.description + "] into array..." );
                    trace( "pushing rule active: [" + rule.active + "] into array..." );
                    trace( "pushing rule users: [" + rule.users + "] into array..." );
                    trace( "pushing rule name: [" + rule.name + "] into array..." );
                }

                if ( sawFail == true ) {
                    trace( "pushing rule passFail: FALSE into array..." );
                    rule.passFail = "No";
                } else {
                    if ( debug ) {
                        trace( "pushing rule passFail: PASSED into array..." );
                    }
                    
                    rule.passFail = "Yes";
                }
                this.rules[ rule.id ] = rule ;
            } else {
                x++;
            }
            if ( this.fileArray[ x + 1 ] == null ) {
                if ( debug ) {
                    trace( "this line of fileArray is null, setting done to true. " );
                }
                done = true;
            }

        }
        if ( debug ) {
            trace( "rules array length = " + this.rules.length );
            trace( "emitting rulesBuilt event...");
        }
        this.emitter.emit( 'rulesBuilt' /* , arg1, arg2, argn... */ );
    };

        // assign callback for when the database actually got the date and time

    this.emitter.on('DISABLED gotTimeAndDate', function( idArg, dateArg, timeArg) {
        debug = true;

            // do what we where trying to do when we needed a valid date and time 1st

        if ( debug ) {
            trace( "got gotTimeAndDate event.  populating rule id: [" + idArg + "]..." );
            trace( "q count decremented = [" + --self.ruleqCount + "]" );
        }
        
        if ( !self.rules[ idArg ]) {
            if ( debug ) {
                trace( "self.rules[ " + idArg + "] is null or not defined.  leaving emitter.on gotTimeAndDateEvent..." );
                return;
            }
            
        } else {
            if ( debug ) {
                trace( "populating self.rules..." );
                trace( "self.rules.length = [" + self.rules.length + "]");
            }
            self.rules[ idArg ].dateAdded  = dateArg;
            self.rules[ idArg ].timeAdded  = timeArg;     
            
            if ( debug ) {
                trace( "after incrementing information in array..." );
                trace( "self.rules.length = [" + self.rules.length + "]");
                trace( "self.rules[" +  idArg + "].dateAdded = [" + self.rules[ idArg ].dateAdded + "]");
                trace( "self.rules[" +  idArg + "].timeAdded = [" + self.rules[ idArg ].timeAdded + "]");
            }

            if ( self.ruleqCount == 0 ) {
                self.emitter.emit( "donePopulatingDateAndTime");
            } else if ( self.ruleqCount == 1 ) {
                if ( debug ) {
                    trace( "rule q count down to one." );
                }
                
            }

        }
 
    trace( "self.rules.[ idArg ].timeAdded = [" + self.rules[ idArg ].timeAdded + "]");   });
        
                // assign callback for when the emitter is valid

    this.emitter.on( 'DISABLED donePopulatingDateAndTime', function() {

            // do what we where trying to do when we need this to be true

        if ( debug ) {
            trace( "got done populating date and time!  exiting..." );
            trace( "self.rules.length = [" + self.rules.length + "]");
            trace( "self.rules[95].dateAdded = [" + self.rules[95].dateAdded + "]");
        }


    }); 

    self.emitter.on ("DISABLED readyToCreateCsv", function() {
        if ( debug ) {
            trace( "got ready to create csv event!" );
        }

        var cleanArray = [];
        for ( rule in self.rules ) {
            if ( debug ) {
                trace( "self.rules[ rule ].id = " + self.rules[ rule ].id );
            }
            cleanArray.push( self.rules[ rule ]);
        }
        
        (async () => {
            csv = new ObjectsToCsv( cleanArray );
            if ( debug ) {
                trace( "self.rules.length inside csv maker: " + cleanArray.length );
            }  
            try {
                    // Save to file:

                await csv.toDisk( './test.csv' );
                exit();

            } catch( error ) {
                if ( debug ) {
                    trace( "*** ERROR: [" + error.toString() + "] ***" );
                }
                exit();
            }
        
            // Return the CSV file as string:
            // console.log( await csv.toString());
        })();
    });


    self.emitter.on( "DISABLED gotTimeAndDate", function() {
        if ( debug ) {
            trace( "got date and time in donePopulatingDataAndTime event handler..." );
            trace( "self.ruleqCount = [" + self.ruleqCount + "]");
        }
        
        if ( self.ruleqCount != 0 ) {
            if ( debug ) {
                trace( "not ready to create csv yet..." );
            }
            return;
        } else {
            if ( debug ) {
                trace( "ready to create csv..." );
            }
            self.emitter.emit( "readyToCreateCsv" );
            
        }

        if ( !self.rules || self.rules.length == 0 ) {
            throw new Error( "ERROR: self rules array is invalid or empty!" );
        } else {
            if ( debug ) {
                trace( "self.rules.length = [" + self.rules.length + "]");
            }
            for ( var rule in self.rules ) {
                if ( debug ) {
                    trace( "id: " + self.rules[ rule ].id );
                }
                
            }
            
        }
     
            // If you use "await", code must be inside an asynchronous function:
        var objs = [];
        var objOne = {
            id: "1"
        }
        objs.push( objOne);

        var objTwo = {
            id: "2"
        }
        objs.push( objTwo );

        var objThree = {
            id: "3"
        }
        objs.push( objThree );
        

    });
    
        // assign callback for when the emitter is valid

    this.emitter.on( 'arrayDateTimeFull', function() {

            // do what we where trying to do when we need this to be true

        if ( debug ) {
            trace( "got array date time is full event!  exiting..." );
        }
        exit();
    }); 

        
        // assign callback for when the rules array has data

    this.emitter.on('DISABLED rulesBuilt', function() {
        var debug = true;
        if ( debug ) {
            trace( "got rulesBuilt EVENT " );
        }
        
        // do what we where trying to do when we need a valid connection 1st

                    // waitUntilConnectionIsValid

        if ( self.rules == undefined || self.rules == null ) {
            throw new Error( "ERROR: self.rules is undefined while trying to iterate rules. ***");
        } else {
            if ( debug ) {
                trace( "*** PASSED: self.rules is defined.  now entering for loop..." );
                trace( "self.rules.length = [" + self.rules.length + "]");
                if ( self.rules.length == 0 ) {
                    if ( debug ) {
                        trace( "no rules to process, exiting..." );
                        exit();
                    }
                    
                }
            }
            
        }
        for ( var rule in self.rules ) {
            if ( debug ) {
                trace( "rule = " + rule );
            }
            
            if ( self.rules[ rule ] == undefined ) {
                if ( debug ) {
                    trace(" self.rules[" + rule + "].id is undefined.  continuing..." );
                }
                continue;
            }

            trace( "calling data object populate method for: self.rules[ rule ] = [" + self.rules[ rule ] + "]");
            self.ruleq[ self.ruleqCount ++ ] = rule;
            if ( debug ) {
                trace( "incremented q count to " + self.ruleqCount );
            }
            
            self.dataObject.populateCountAndTime( self.rules[ rule ]);
        }        
    }); 

    this.parseData = function( err, data ) {
    
        if ( debug = false ) {
            trace( "RuleParser.parseData called..." );
        }

        if ( debug ) {
            trace( "filling array with file contents..." );
        }
        
        fileContents = data.toString().replace( /\r\n/g,'\n' ).split( '\n' );
        var debug = true;
        if ( debug ) {
            trace( "file contents length: " + fileContents.length );
        }
        
        var RuleParser = new RuleParser( fileContents ); 
        RuleParser.buildRules();
        trace( "RuleParser rules length: [" + RuleParser.rules.length + "]" );
        trace( "process.rules length = [" + RuleParser.rules.length + "]" );
        trace( "process.argv = " + process.argv[ 2 ]);
        var ruleindex = process.argv[ 2 ];
    

        const conn      = mysql.createConnection( this.config );
        var dateregex   = /(\d\d\d\d-\d\d-\d\d)T(\d\d:\d\d:\d\d)/;
        var countregex  = /:(\d+)/;
        
        // node native promisify

        const query = util.promisify( conn.query ).bind( conn );
        
        (async () => {
          try {
            for ( var x=0; x < RuleParser.rules.length; x++ ) {
                if ( RuleParser.rules[ x ] == undefined ){
                    if ( debug ) {
                        trace( "x: " + x + " this rule is undefined.  continuing..." );
                        continue;
                    }
                }
                console.log( "populating rule " + RuleParser.rules[ x ].id + " ..." );
                try {
                    results = await query("select min( DateAdded ) from Alert where RuleID='" + RuleParser.rules[ x ].id + "'");
                } catch( error ) {
                    if ( debug ) {
                        trace( "error: " + error.toString() );
                    }
                    
                }
                
                var resultString    = JSON.stringify( results );
                trace( "resultString = [" + resultString + "]");
                if ( resultString.includes( "null" )){
                    RuleParser.rules[ x ].dateAdded = "null"
                    RuleParser.rules[ x ].timeAdded = "null";

                }else {
                    var theDatematch    = resultString.match( dateregex );
                    console.log( "theDatematch[ 1 ] = [" + theDatematch[ 1 ] + "]  theDatematch[ 2 ] = [" + theDatematch[ 2 ] + "]" );
                    RuleParser.rules[ x ].dateAdded = theDatematch[ 1 ];
                    RuleParser.rules[ x ].timeAdded = theDatematch[ 2 ];
                }
                
            
                console.log( "getting number of alerts for rule " + RuleParser.rules[ x ].id + " ..." );
                try {
                    results = await query( "select count( * ) from Alert where RuleID = '" + RuleParser.rules[ x ].id + "'" );
                } catch( error ) {
                    if ( debug ) {
                        trace( "error: " + error.toString() );
                    }
                    
                }
                
                var resultString    = JSON.stringify( results );
                var theCountMatch   = resultString.match( countregex );

                if ( debug ) {
                    trace( "count = [" + theCountMatch[ 1 ] + "]");
                }
                
                if ( resultString.includes( "null" )){
                    if ( debug ) {
                        trace( "Result string has null!  continuing..." );
                    }
                    RuleParser.rules[ x ].alertsSinceAdded = "db null.";
                    //continue;
                }else{
                    RuleParser.rules[ x ].alertsSinceAdded = theCountMatch[ 1 ];
                }
                
                    // get ond data

                console.log( "getting OND data for rule " + RuleParser.rules[ x ].id + " ..." );
                try {
                    results = await query( "select OnlyNewData from Rule where ID='" + RuleParser.rules[ x ].id + "'" );
                } catch( error ) {
                    if ( debug ) {
                        trace( "error: " + error.toString() );
                    }
                    
                }
                
                var resultString    = JSON.stringify( results );
                // var theCountMatch   = resultString.match( countregex );
                
                if ( resultString.includes( "null" )){
                    if ( debug ) {
                        trace( "Result string has null!  continuing..." );
                    }
                    RuleParser.rules[ x ].onlyNewData = "db null.";
                    continue;
                }
                
                if ( debug ) {
                    trace( "ond = [" + results[ 0 ].OnlyNewData + "]");
                }
                RuleParser.rules[ x ].onlyNewData = results[ 0 ].OnlyNewData;
            }

            var cleanArray = [];
            for ( rule in RuleParser.rules ) {
                if ( !RuleParser.rules[ rule ]) {
                    if ( debug ) {
                        trace( "rule undefined.  continue cleaning array..." );
                    }
                    
                    continue;
                }
                if ( debug ) {
                    trace( "RuleParser.rules[ rule ].id = " + RuleParser.rules[ rule ].id );
                }
                cleanArray.push( RuleParser.rules[ rule ]);
            }

            csv = new ObjectsToCsv( cleanArray );
            if ( debug ) {
                trace( "self.rules.length inside csv maker: " + cleanArray.length );
            }  
            try {
                    // Save to file:

                await csv.toDisk('./test.csv');
                exit();

            } catch( error ) {
                if ( debug ) {
                    trace( "*** ERROR: [" + error.toString() + "] ***" );
                }
                exit();
            }
          } finally {
            conn.end();
            exit();
          }
        })()
    }
} 

module.exports = RuleParser;
