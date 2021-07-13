const filesystem  = require( 'fs' );


// populateArray -- takes a path for a string and populated an array from the contents of
//                  the text in the file that the path points to.

class FileManager {
    
    constructor() {}

    populateArray( path ) {
        // var data = filesystem.readFileSync( path ).toString().split( "\n" ); // this leaves an \r at the end
        var data = filesystem.readFileSync( path ).toString().replace( /\r\n/g,'\n' ).split( '\n' );

        var debug = true;
        if ( debug ) {
            console.log( "reading source file in " + path + "..." );
        }
        return data;
    };

    getCommands( path ) {
        var commands = filesystem.readFileSync( path ).toString().split( "\n" );
        filesystem.close();
        return commands;
    };

    testMe() {
        var errors = [];
        var testArray = this.populateArray( "parsingTools/test.txt" );
        if ( testArray.length != 5 ) { 
            errors.push( "*** ERROR: failed lenghth test. " +
                            " length was expected to be 5.  got: " + 
                            testArray.length + " instead. ***");
        } else {
            console.log( "FileManager passed array length test.")
        }

        if ( !testArray[ 0 ].includes( "first" )) {
            errors.push( "*** ERROR: first slot in array expected to contain " +
                            " \"first\" instead we got: " + testArray[ 0 ] + " ***");
        } else {
            console.log( "FileManager passes first index array test." );
        }

        if ( errors.length == 0 ) {
            console.log( "FileManager Object passsed all tests." );
        } else {
            errors.forEach(error => {
                console.error( error );
            });
        }
    }
}

module.exports = FileManager;
