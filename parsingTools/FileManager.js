const filesystem  = require( 'fs' );

function FileManager() {

    this.populateArray = function( path ) {
        var data = filesystem.readFileSync( path ).toString().split( "\n" );
        var debug = true;
        if ( debug ) {
            console.log( "reading source file in " + path + "..." );
        }
        return data;
    } 
}

module.exports = FileManager;
