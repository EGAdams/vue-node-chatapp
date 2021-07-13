/*
 * interface ArrayPopulator ( kind of an interface i guess.  need typescript, no time... )
 * 
 * ArrayPopulator( *.populateArray(), argumentFor1stArgument )
 * 
 * array[] populateArray();
 *
 */
const FileManager = require( "./FileManager" );

 

 class ArrayPopulator {

     constructor( populatorArg, sourceArg ) { 
        this.populator = populatorArg;
        this.source = sourceArg;
    }

        // for testing, arguments can't be passed to the constructor, so use these in testMe();
    
    setPopulator( populatorArg ) { this.populator   = populatorArg; }
    setSource( sourceArg )       { this.source      = sourceArg;    }

    populateArray() {
        var newArray = this.populator.populateArray( this.source );
        return newArray;
    }

    testMe(){
        var errors      = [];
        this.setPopulator( new FileManager() );
        this.setSource( "parsingTools/test.txt" );
        var testArray   = this.populateArray();
        if ( testArray.length != 5 ) { 
            errors.push( "*** ERROR: failed lenghth test. " +
                            " length was expected to be 5.  got: " + 
                            testArray.length + " instead. ***");
        } else {
            console.log( "ArrayPopulator passed array length test.")
        }

        if ( !testArray[ 0 ].includes( "first" )) {
            errors.push( "*** ERROR: first slot in array expected to contain " +
                            " \"first\" instead we got: " + testArray[ 0 ] + " ***");
        } else {
            console.log( "ArrayPopulator passes first index array test." );
        }

        if ( errors.length == 0 ) {
            console.log( "ArrayPopulator Object passsed all tests." );
        } else {
            errors.forEach(error => {
                console.error( error );
            });
        }
    }
 }

module.exports = ArrayPopulator;
