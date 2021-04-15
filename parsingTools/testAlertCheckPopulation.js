require( './Utils' );
const AlertPopulator    = require( './AlertPopulator'   );
const ArrayPopulator    = require( './ArrayPopulator'   );
const FileManager       = require( './FileManager'      );
const Regex             = require( './Regex'            );


require( './FileManager' );
require( './Parser')


// var filename = "/mnt/c/Users/eg197/tools/vue_projects/vue-node-chatapp/alertCheck_1615899731770.txt";
var alertFilename = "./alertCheck_1615899731770.txt";
var fileManager = new FileManager();
var freshArray = fileManager.populateArray( alertFilename );


// console.log( "array populated.  size is: " + freshArray.length );

var regexMapFile = "./customerAlertRegex.txt"

    // set up populator for regex

var populator   = new ArrayPopulator( fileManager, regexMapFile );


    // regex needs a populator to fill it's clip
    // populators have a populateArray() method

var regex   = new Regex( populator );
var alertCheckPopulator = new AlertPopulator();

var customers = alertCheckPopulator.populateAlerts( freshArray, regex );

console.log( customers.acp.numberOfAlerts );

