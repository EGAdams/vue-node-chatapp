//
// BlotterPopulator.js
//
//	This object is reponsible for populating the blotter counts for a customer
//

var debug = true;
function trace( texttowrite ) {
    console.log( texttowrite );
}

function traceDump( tracetodump ) {
    console.log( tracetodump );
}

var BlotterPopulatorDebug =	true;

    // Main object definition

function BlotterPopulator( customers ) {
    var self=	this;		// Capture this as self for use inside anon functions

        // Default settings

    var so =	{
        debug:	true
    };


    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {}

    //
    // populateBlotterCount
    //
    // raw array contains the output of blotterCheck.sh
    //
    self.populateBlotterCount = function( rawArray, regex ) {
        if ( debug ) {
            trace( "In populateBlotterCount" );
        }
        
        var currentCustomer = "";
        var searchstatus    = "looking for customer";
        for ( var index in rawArray ) {
           
                // read in a line
            
            var line    = rawArray[ index ];
            console.log( "line: [" + line + "]" );
            var result  = regex.matchedString( line );
            if ( result ) {
                if ( result.name == "blotterCustomerName" ) {
                    if ( searchstatus != "looking for customer" ) {
                        throw console.error( "*** ERROR: this should be a customer.  possible corrupt initialization file. ***" );
                    }

                        // populate new customer name
                        
                    if ( customers[ result.matchedString == undefined ]) {

                            // initialize new customer
                        
                            customers[ result.matchedString ]   = {};           
                    }
                    
                    currentCustomer                     = result.matchedString;
                    searchstatus                        = "looking for blotter count";
                }

                if ( result.name == "blotterCount" ) {
                    if ( searchstatus != "looking for blotter count" ) {
                        throw console.error( "*** ERROR: this should be a blotter count.  possible corrupt initialization file. ***");
                    }
                    customers[ currentCustomer ][ "blotterCount" ]  = result.matchedString;
                    searchstatus                                    = "looking for customer";
                }
            }
        }
        
        if ( debug ) {
            trace( "*** Done populateBlotterCount", 1 );
        }
        return customers;
    }

    // **********************************************************************************
    //
    // Main constructor code
    //
    // **********************************************************************************

        // Save the passed in settings

    for ( var key in customers ) {
        so[ key ]	= customers[ key ];
    }

    if ( so.debug ) {
        trace( "In BlotterPopulator constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }

        // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done BlotterPopulator constructor", 1 );
    }

}

module.exports = BlotterPopulator;
