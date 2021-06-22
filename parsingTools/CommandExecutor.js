/*
 *  CommandExecutor
 */
class CommandExecutor {

    constructor() {}

    /*
     *  public void executeCommand( CommandObject commandObjectArg, Socket ioArg )
     *  
     *  produces 2 side effects:
     * 
     *  ( 1 ) the command object passed to executeCommand is executed and it's output is populated.
     *  ( 2 ) server is then notified and sent this populated command object.
     * 
     */
    executeCommand( commandObjectArg, ioArg ) {
        this.commandObject  = commandObjectArg;
        this.io             = ioArg;
        console.log( "loaded " + commandObjectArg.description + " into CommandExecutor... " );
        console.log( "processing command..." );
  

        // eval( "this." + this.commandObject.commandMethod + "()");  // evil can be replaced with good.
        this.execute();
    }

    /*
     *  private void execute()
     */
    execute() {
        
        if ( this.commandObject.targetMachine == "thispc" ) {
            const { exec } = require( "child_process" );

            exec( this.commandObject.executable + " " + this.commandObject.args, ( error, stdout, stderr ) => {
                if ( error ) {
                    console.log( `error: ${ error.message }` );
                    return;
                }
                if ( stderr ) {
                    console.log( `stderr: ${ stderr }` );
                    return;
                }
    
                this.commandObject.output = stdout;             // populate output here
                this.io.emit( 'gotData', this.commandObject );  // send to main vue component through socket
                console.log( `stdout: ${ stdout }` );
            } );
        } else {
            
                // execute command on target machine
            
        
        }
    }
}

module.exports = CommandExecutor;
