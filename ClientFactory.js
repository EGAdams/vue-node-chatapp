//
// ClientFactory.js
//
//	creates and manages client connections
//

var ClientFactoryDebug =	true;

    // Main object definition

function ClientFactory( initObj ) {
    var self=	this;		// Capture this as self for use inside anon functions

        // Default settings

    var so =	{
        debug:	true,
        clients: {}
    };


    //
    // Methods
    //
    // Should be defined as self.<functionName> = function( <params> ) {}

    //
    // getClient
    //
    self.getClient = function( clientConfig ) {
        if ( debug ) {
            trace( "In getClient" );
        }
    
        // getClient implementation
        console.log( "getClient() called with config: " + clientConfig );
    
        if ( debug ) {
            trace( "*** Done getClient", 1 );
        }
    }

    //
    // createClient
    //
    self.createClient = function( clientConfig ) {
        if ( debug ) {
            trace( "In createClient" );
        }
    
        // createClient implementation
        console.log( "createClient() called with config: " + clientConfig );

        var Client = require('ssh2').Client;

        var conn = new Client();
        conn.on('ready', function() {
        console.log('Client :: ready');
        conn.shell(function(err, stream) {
            if (err) throw err;
            stream.on('close', function() {
            console.log('Stream :: close');
            conn.end();
            }).on('data', function(data) {
            console.log('OUTPUT: ' + data);
            // emitter.emit( 'gotData', data.toString());
            });
            // stream.end('./alertCheck.sh\n./blotterCheck.sh\nexit\n');
        });
        }).connect({
        host: '10.170.150.4',
        //port: 22,
        username: 'adamsl',
        privateKey: require('fs').readFileSync('/home/adamsl/.ssh/id_rsa')
        });


        so.clients[ clientConfig.name ] = conn;
    
        if ( debug ) {
            trace( "*** Done createClient", 1 );
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
        trace( "In ClientFactory constructor" );
        trace( "so is:", 1 );
        traceDump( so );
    }



        // Expose the settings object

    self.so	= so;
    if ( so.debug ) {
        trace( "Done ClientFactory constructor", 1 );
    }

}
