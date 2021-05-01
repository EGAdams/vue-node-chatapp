/*
 *  Regex class
 *
 *  populator already constructed at this point.
 *  all that needs to be done is fire the populate array
 *  method.
 * 
 *  this object is used to find any string of interest in an array of strings
 *  it was originally designed to pull a list of targeted regular expresions
 *  from a file.  I was working on this before I left FPL.
 *
 */
function Regex( populator ) {

    this.regexClip = [];
    this.regexClip.length = 0;
    this.tempArray = [];
    this.fillClip = function( raw_regex_source_file_array ) {
        for ( line in raw_regex_source_file_array ) {
            if ( raw_regex_source_file_array[ line ].includes( "<--*-->")) {
                this.tempArray = raw_regex_source_file_array[ line ].split( "<--*-->" );
                var bullet = {};

                bullet.name     = this.tempArray[ 0 ];
                bullet.regex    = this.tempArray[ 1 ];
                this.regexClip.push( bullet );
                this.tempArray          = [];
            }
        }
    }

    // regex clip holds an array of objects
    // that define a matchedString, ie: name of regex, reg expreston, group info...
    raw_regex_source_file_array   = populator.populateArray();
    this.fillClip( raw_regex_source_file_array );


    //
    // Boolean matchedString( String line ) -- this is the outside interface
    //
    var match;
    this.matchedString = function ( line ) {
        for ( x = 0; x < this.regexClip.length; x++ ) {
            match = line.match( this.regexClip[ x ].regex );
            if ( match ) {
                this.regexClip[ x ].matchedString = match[ 1 ];
                return this.regexClip[ x ];
            }
        }
        return false;
    }
}

module.exports = Regex;


/*
        var descriptionGetMatch = this.fileArray[ x ].matchedString( descriptionregex );
        if ( descriptionGetMatch ) {
            rule.description = descriptionGetMatch[ 1 ];
        }

        var nameRegex           = /^Name: (\w+.*)/;
        var ruleregex           = /^Rule (\d+):/;
        var descriptionregex    = /Description: (\w+.*)/;
        var activeregex         = /Active: (\d)/;
        var usersregex          = /Users:/;
        var failregex           = /FAIL:/;
*/

