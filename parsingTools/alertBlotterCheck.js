require( './Utils' );
const AlertPopulator    = require( './AlertPopulator'   );
const BlotterPopulator  = require( './BlotterPopulator' );
const ArrayPopulator    = require( './ArrayPopulator'   );
const FileManager       = require( './FileManager'      );
const Regex             = require( './Regex'            );

var filename = "./alertCheck_1615899731770.txt";
var fileManager = new FileManager();
var freshArray = fileManager.populateArray( filename );


console.log( "array populated.  size is: " + freshArray.length );

var customersData = {};

    // need a populator to create a regex

    // a file manager is a populator

    // set up populator for regex
var regexMapFile = "./customerAlertRegex.txt"
var populator   = new ArrayPopulator( fileManager, regexMapFile );


    // regex needs a populator to fill it's clip
    // populators have a populateArray() method

var regex   = new Regex( populator );

var alertCheckPopulator = new AlertPopulator();

var customersData = alertCheckPopulator.populateAlerts( freshArray, regex );

console.log( "getting blotter info..." );

filename    = "./blotterCheck_1616503957611.txt";
fileManager = new FileManager();
freshArray  = fileManager.populateArray( filename );

    // set up populator for regex

regexMapFile    = "./customerBlotterRegex.txt"
populator       = new ArrayPopulator( fileManager, regexMapFile );
regex           = new Regex( populator );
var blotterPop  = new BlotterPopulator( customersData );  // pass in customer object previously populated with alert data.
customersData       = blotterPop.populateBlotterCount(freshArray, regex );

for ( var key in customersData ) {
    console.log ( "customer name: [" + key + "]\tnumber of alerts: [" + customersData[ key ].numberOfAlerts + "]" );
    console.log ( "customer name: [" + key + "]\tblotter count:    [" + customersData[ key ].blotterCount + "]" );
}


