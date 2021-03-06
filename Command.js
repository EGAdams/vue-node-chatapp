//
// Command.js
//
//	stores information about a command
//

var CommandDebug =	true;

    // Main object definition

function Command( initObj ) {
    var self=	this;		// Capture this as self for use inside anon functions

        // Default settings

    var so =	{
        debug:	true
    };

    var output = [];


    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {}

    //
    // process() -- use the command output for something
    //
    self.process = function() {
        if ( debug ) {
            trace( "In process" );
        }
    
            // process implementation
            
        console.log( "processing output: " + self.output + "... " );
        so.commandProcessor.process();
    
        if ( debug ) {
            trace( "*** Done process", 1 );
        }
    }


    // **********************************************************************************
    //
    // Main constructor code
    //
    // **********************************************************************************

        // Save the passed in settings
    
    var foundProcessor = false;
    for ( var key in initObj ) {
        so[ key ]	= initObj[ key ];
        if ( key == "commandProcessor" ) {
            foundProcessor = true;
        }    
    }

    if ( !foundProcessor ) {
        trace( "*** ERROR: Command needs a processor to function! ***" );
        trace( "Please pass in a command processor with key \"commandProcessor\"." );
        return null;
    }

    if ( so.debug ) {
        trace( "In Command constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }

        // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done Command constructor", 1 );
    }

}

module.exports = Command;
