

class CommandProcessor {

    constructor() {}

    processCommand( commandObjectArg, ioArg ) {
        this.commandObject  = commandObjectArg;
        this.io             = ioArg;
        console.log( "loaded " + commandObjectArg.description + " into CommandProcessor... " );
        console.log( "processing command..." );
  

        // eval( "this." + this.commandObject.commandMethod + "()");  // evil can be replaced with good.
        this.execute();
    }

    execute() {
        
        const { exec } = require( "child_process" );

        exec( this.commandObject.executable + " " + this.commandObject.args, ( error, stdout, stderr ) => {
            if ( error ) {
                console.log( `error: ${error.message}` );
                return;
            }
            if ( stderr ) {
                console.log( `stderr: ${stderr}` );
                return;
            }

            this.commandObject.output = stdout;
            this.io.emit( 'gotData', this.commandObject );
            console.log( `stdout: ${stdout}` );
        } );
    }
}

module.exports = CommandProcessor;
