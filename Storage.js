
const fileSystem  = require( 'fs' );

// i wanted this to be a storage place for anything.  using a file name
// prefix to initialize this object may be forcing the store to file systems
// only.  may have to re-think this constructor.
function Storage( filenamePrefix ) {

    var dateobject = new Date();
    this.filename = filenamePrefix + "_" + dateobject.getTime();

    fileSystem.open(this.filename + '.txt', 'w', function (err, file) {
        if (err) {
            throw err;
        }else{
            console.log( "filesystem open." );
        }        

    });

    this.store = function( dataToStore ) {
        var self = this;
            // store data

        fileSystem.appendFile( this.filename + ".txt", dataToStore, function (err) {
            if (err) {
                throw err;
            } else {
                console.log( "appending " + dataToStore + " to filename: " + self.filename + ".txt..." );
            }    
        });
    }

    this.getFilename = function() {
        return this.filename + ".txt";
    }
}
// 'C:\Users\eg197\tools\vue_projects\vue-node-chatapp\client\npm run serve'

module.exports = Storage;
