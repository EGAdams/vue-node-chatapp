
/*
 *
 * tests the ability for the Regex object to build
 * itself and detect patterns.
 * 
 */
var testFile            = "testRegex.txt";
const FileManager       = require( "./FileManager" );
const ArrayPopulator    = require( "./ArrayPopulator" );
const Regex             = require( "./Regex" );
populatortype           = new FileManager();

    // all populators need a type and a source

var populator       = new ArrayPopulator( populatortype, testFile );


    // regex needs a populator to fill it's clip
    // populators have a populateArray() method

var regex           = new Regex( populator );

var testLine        = "ok: [acp] => {";

var result          = regex.matchedString( testLine );
console.log( "result name: " + result.name  );
console.log( "result.regex:" + result.regex );
console.log( "result.matchedString:" + result.matchedString );




