const FileManager = require( "./FileManager" );


class Tester {
    constructor( testableObjectsArg ) {
        this.testableObjects = testableObjectsArg;
    }

    start() {
        testableObjects.forEach( specimen => {
            if ( specimen.length != 0 && !specimen.match( /^#/ )) {
                var Subject = require( "./" + specimen );
                var subject = new Subject();
                console.log( "\nbegin " + specimen + " test..." );
                subject.testMe();
                console.log( "end " + specimen + " test.\n" );
            }
        });
    }   
}

var fileManager = new FileManager();
var testableObjects = fileManager.populateArray( "parsingTools/test_plan.txt" );
var tester = new Tester( testableObjects );
tester.start();

console.log( "end testing testable objects." );
