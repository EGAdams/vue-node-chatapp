class ServerManager {

    constructor() { }

    processCommand( commandObjectArg, ioArg ) {
        this.commandObject = commandObjectArg;
        this.io = ioArg;
        console.log( "loaded " + commandObjectArg.description + " into ServerManager... " );
        console.log( "processing command " + this.commandObject.commandMethod + " ..." );

        eval( "this." + this.commandObject.commandMethod + "()");

    }
        
    checkStatus() {
        const { exec } = require( "child_process" );

        exec( "ps -ef", ( error, stdout, stderr ) => {
            if ( error ) {
                console.log( `error: ${error.message}` );
                return;
            }
            if ( stderr ) {
                console.log( `stderr: ${stderr}` );
                return;
            }

            this.commandObject.output = stdout;

            if ( this.commandObject.output.includes( "server.js" )) {
                this.commandObject.status = "running";
                console.log( "server is running." );
            } else {
                console.log( "server is stopped." );
                this.commandObject.status = "stopped";
            }

            this.io.emit( 'gotData', this.commandObject );
            console.log( `stdout: ${stdout}` );
        } );
    }
}

module.exports = ServerManager;