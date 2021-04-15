//
// ArrayPop.js
//
// Class pattern for objects that can be instantiated with the new keyword
//

var ArrayPopDebug =	true;
    // Main object definition

function ArrayPop( initObj ) {
    var self=	this;		// Capture this as self for use inside anon functions

        // Default settings

    var so =	{
        debug:	true
    };


    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {} 	trace( "ArrayPop", 1 );



    // *********************************************************************************
    //
    // Main constructor code
    //
    // **********************************************************************************

    // Save the passed in settings

    for ( var key in initObj ) {
        so[ key ]	= initObj[ key ];
    }

    if ( so.debug ) {
        trace( "In ArrayPop constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }

    // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done ArrayPop constructor", 1 );
    }

}
