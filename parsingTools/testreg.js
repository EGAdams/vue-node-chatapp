
var line = "Description: Concentration Rule - concentrated net worth > 10% in other positions on a trade sell";
const regexpSize = /^Description: (\w+.*)/;
const match = line.match( regexpSize );
if ( match != null ) {
    console.log( `the rule number: ${match[1]} `);
} else {
    console.log( "match is null." );
}




