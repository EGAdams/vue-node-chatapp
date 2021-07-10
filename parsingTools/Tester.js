const FileManager = require( "./FileManager" );


class Tester {
    constructor( testableObjectsArg ) {
        this.testableObjects = testableObjectsArg;
    }

    start() {
        testableObjects.forEach( specimen => {
            if ( specimen.length != 0 ) {
                var Subject = require( "./" + specimen );
                var subject = new Subject();
                subject.testMe();
            }
        });
    }   
}

var fileManager = new FileManager();
var testableObjects = fileManager.populateArray( "parsingTools/test_plan.txt" );
var tester = new Tester( testableObjects );
tester.start();

console.log( "end test." );
