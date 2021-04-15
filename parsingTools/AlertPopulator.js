//
// AlertPopulator.js
//
//	This object is reponsible for populating the alerts for a customer
//
// populateAlerts -- 

var debug = true;
function trace( texttowrite ) {
    console.log( texttowrite );
}

function traceDump( tracetodump ) {
    console.log( tracetodump );
}

var AlertPopulatorDebug =	true;

    // Main object definition

function AlertPopulator( initObj ) {
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
    // populateAlerts
    //
    // raw array contains the output of alertCheck.sh
    // customersData is presumably blank in this object.  so call alert check 1st !!
    //
    self.populateAlerts = function( rawArray, regex ) {
        if ( debug ) {
            trace( "In populateAlerts" );
        }
        
        var currentCustomer = "";
        var searchstatus    = "looking for customer";
        var customersData       = {};
        for ( var index in rawArray ) {
           
                // read in a line
            
            var line    = rawArray[ index ];
            console.log( "line: [" + line + "]" );
            var result  = regex.matchedString( line );
            if ( result ) {

                    // check for customer name

                if ( result.name == "alertCustomerName" ) {
                    if ( searchstatus != "looking for customer" ) {
                        throw console.error( "*** ERROR: this should be a customer.  possible corrupt alert check file. ***" );
                    }

                        // populate new customer name
                        
                    customersData[ result.matchedString ]   = {};
                    currentCustomer                         = result.matchedString;
                    searchstatus                            = "looking for alert count";
                }

                    // check for alerts
                    
                if ( result.name == "numberOfAlerts" ) {
                    if ( searchstatus != "looking for alert count" ) {
                        throw console.error( "*** ERROR: this should be an alert.  possible corrupt alert check file. ***");
                    }
                    customersData[ currentCustomer ][ "numberOfAlerts" ] = result.matchedString;
                    searchstatus            = "looking for customer";
                }
            }
        }
        
        if ( debug ) {
            trace( "*** Done populateAlerts", 1 );
        }
        return customersData;
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
        trace( "In AlertPopulator constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }

        // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done AlertPopulator constructor", 1 );
    }

}

module.exports = AlertPopulator;