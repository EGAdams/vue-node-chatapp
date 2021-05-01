const filesystem  = require( 'fs' );

class FileManager {
    constructor() {

        this.populateArray = function ( path ) {
            var data = filesystem.readFileSync( path ).toString().split( "\n" );
            var debug = true;
            if ( debug ) {
                // console.log( "reading source file in " + path + "..." );
            }
            return data;
        };

        this.getCommands = function ( path ) {
            var commands = filesystem.readFileSync( path ).toString().split( "\n" );
            filesystem.close();
            return commands;
        };
    }
}


var dummy = FileManager;
dummy.getCommands;

module.exports = FileManager;
