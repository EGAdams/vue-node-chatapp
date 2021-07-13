//
// TruthPopulator.js -- Object to populate initial array of truth from 
//                      the generated rules unit test report.
//
//	
//

var TruthPopulatorDebug =	true;

    // Main object definition

const   fs              = require( 'fs' );

var debug = true;
function trace( texttowrite ) {
    console.log( texttowrite );
}

function traceDump( tracetodump ) {
    console.log( tracetodump );
}

function TruthPopulator( initObj ) {
    var self=	this;		// Capture this as self for use inside anon functions

        // Default settings

    var so =	{
        debug:	true
    };

    var sourcefile = "parsingTools\\afterAddingCustRelatedTables.txt";
    this.truthPopulated = [];


    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {}

    self.populateTruth = function() {


            // read the source file in

        var data = fs.readFileSync( sourcefile, 'utf8' );

        
            // split the data at the line breaks to populate the array

        this.truthPopulated = data.toString().replace( /\r\n/g,'\n' ).split( '\n' );
    }

    self.test_me = function() {

        self.populateTruth();
        if ( this.truthPopulated.length > 0 ) {
            if ( debug ) {
                trace( "array populated.  length: " + this.truthPopulated.length, 1 );
            }
            
        } else {
            if ( debug ) {
                trace( "*** ERROR: array population failure. ***", 1 );
            }
        }
    }


    // **********************************************************************************
    //
    // Main constructor code
    //
    // **********************************************************************************

        // Save the passed in settings

    for ( var key in initObj ) {
        so[ key ]	= initObj[ key ];
    }

    if ( so.debug ) {
        trace( "In TruthPopulator constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }

        // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done TruthPopulator constructor", 1 );
    }

}

module.exports = TruthPopulator;
