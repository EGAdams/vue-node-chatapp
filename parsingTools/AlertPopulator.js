//
// AlertPopulator.js
//
//	This object is reponsible for populating the alerts for a customer
//
// populateAlerts -- populates number of alerts for each customer. 
// 
// CustomersData populateAlerts( Array[ String ] rawArray, Regex regex ) 
// 

const { raw } = require( "express" );
const FileManager = require( "./FileManager" );

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


    self.processOutput = function( rawArrayArg, regexArg ) {
        return self.populateAlerts( rawArrayArg, regexArg );
    } 

    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {}

    //
    // CustomersData populateAlerts( Array[ String ] rawArray, Bool *( String ) regex ) -- populates number of alerts for each customer.
    //
    // the regex argument here can be anything that takes a string and returns a bool.
    //
    // raw array contains the output of alertCheck.sh
    // customersData is presumably blank in this object.  so call alert check 1st !!
    //
    self.populateAlerts = function( rawArray, regex ) {
        if ( debug ) {
            trace( "In populateAlerts" );
            trace( "raw array length: " + rawArray.length );
        }
        
        var currentCustomer = "";
        var searchstatus    = "looking for customer";
        var customersData       = {};
        for ( var index in rawArray ) {
           
                // read in a line
            
            var line    = rawArray[ index ];
            // console.log( "line: [" + line + "]" );


                // anything of interest in this line?

            var result  = regex.matchedString( line );
            
                // if there is...

            if ( result ) {

                    // check for customer name

                if ( result.name == "alertCustomerName" ) {
                    if ( searchstatus != "looking for customer" ) {
                        throw console.error( "*** ERROR: this should be a customer.  possible corrupt alert check file. ***" );
                    }

                        // populate new customer name and change status to looking for alert count
                        
                    customersData[ result.matchedString ]   = {};
                    currentCustomer                         = result.matchedString;
                    searchstatus                            = "looking for alert count";
                }

                    // check for alerts
                    
                if ( result.name == "numberOfAlerts" ) {
                    if ( searchstatus != "looking for alert count" ) {
                        throw console.error( "*** ERROR: this should be an alert.  possible corrupt alert check file. ***");
                    }

                        // populate the alert count and change status to looking for customer

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

    self.testMe = function() {
        var errors = [];
        var customers = {};

            // need a populator to create a regex

            // a file manager is a populator

            // set up populator for regex
        
        var fileManager = new FileManager();    
        var populator   = new ArrayPopulator( fileManager, "parsingTools/customerAlertRegex.txt" );
        

            // regex needs a populator to fill it's clip.  populators have a populateArray() method.
        
        var Regex = require( "./Regex" );
        var regex   = new Regex( populator );

            // we need a fresh array here

        var freshArray = fileManager.populateArray( "parsingTools/alertCheck_1615899731770.txt" );

        var customers = this.populateAlerts( freshArray, regex );
        
        for ( var key in customers ) {
            console.log ( "customer name: [" + key + "]\tnumber of alerts: [" + customers[ key ].numberOfAlerts + "]" );
        
        }

        if ( customers[ "acp" ].numberOfAlerts == "836" ) {
            console.log( "AlertPopulator passed alert count test." );
        } else {
            errors.push( "*** ERROR: AlertPopulator fails alert count test. ***" );
        }

        if ( errors.length == 0 ) {
            console.log( "AlertPopulator Object passsed all tests." );
        } else {
            errors.forEach(error => {
                console.error( error );
            });
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
        trace( "In AlertPopulator constructor.  The fresh one." );
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
