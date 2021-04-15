require( './Utils' );
const AlertPopulator    = require( './AlertPopulator'   );
const ArrayPopulator    = require( './ArrayPopulator'   );
const FileManager       = require( './FileManager'      );
const Regex             = require( './Regex'            );

var filename = "./alertCheck_1615899731770.txt";
var fileManager = new FileManager();
var freshArray = fileManager.populateArray( filename );


console.log( "array populated.  size is: " + freshArray.length );

var customers = {};

    // need a populator to create a regex

    // a file manager is a populator

    // set up populator for regex
var regexMapFile = "./customerAlertRegex.txt"
var populator   = new ArrayPopulator( fileManager, regexMapFile );


    // regex needs a populator to fill it's clip
    // populators have a populateArray() method

var regex   = new Regex( populator );

var alertCheckPopulator = new AlertPopulator();

var customers = alertCheckPopulator.populateAlerts( freshArray, regex );

for ( var key in customers ) {
    console.log ( "customer name: [" + key + "]\tnumber of alerts: [" + customers[ key ].numberOfAlerts + "]" );

}
