

var TruthPopulator = require( "./TruthPopulator.js" );
var     RuleParser = require( "./RuleParser" );
var     RuleParser = require( "./Rule" );

var debug = true;
function trace( texttowrite ) {
    console.log( texttowrite );
}

function traceDump( tracetodump ) {
    console.log( tracetodump );
}

var populator = new TruthPopulator();

populator.populateTruth();

for ( count=0; count < populator.truthPopulated.length; count++ ) {
    // console.log( populator.truthPopulated[ count ] );
    var ruleregex           = /^Rule (\d+):/;
    var descriptionregex    = /Description: (\w+.*)/;
    var activeregex         = /Active: (\d)/;
    var usersregex          = /Users:/;
    var failregex           = /FAIL:/;

    var x = 0;
    done = false;
    for ( var x=0; x < populator.truthPopulated.length; x++ ) {
        
        if ( populator.truthPopulated[ x ] == undefined ) {
            if ( debug ) {
                trace( "breaking out of for..." );
            }
            break;
        }

        if ( populator.truthPopulated[ x++ ] == null ) {
            if ( debug ) {
                trace( "breaking out of for..." );
            }
            break;
        }

        if ( populator.truthPopulated[ x ] == undefined ) {
            break;
        }

        var nextMatch = populator.truthPopulated[ x ].match( ruleregex );
        if ( nextMatch != null ) {
            
            ruleNumber = nextMatch[1];
            // var rule = new Rule( ruleNumber );
            if ( debug ) {
                trace( "creating rule: [" + ruleNumber + "]  x: [" + x + "]" );
            }
        }
    }        
};


