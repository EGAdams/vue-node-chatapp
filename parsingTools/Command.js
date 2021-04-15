var Client = require('ssh2').Client;

function Command( syntaxArg ) {
    var self = this;
    if ( !syntaxArg ) {
        throw new Error( "Command needs at least a default syntax argument to function.");
    }
    this.syntax = syntaxArg;
    conn = new Client();
    conn.on('ready', function() {
    console.log('Client :: ready');
    conn.shell(function(err, stream) {
        if (err) throw err;
        stream.on('close', function() {
        console.log('Stream :: close\n');
        conn.end();
        }).on('data', function(data) {
        console.log('OUTPUT: ' + data);
        // emitter.emit( 'gotData', data.toString());
        });
        stream.end( self.syntax + "\nexit\n" );
    });
    }).connect({
    host: '10.170.150.4',
    //port: 22,
    username: 'adamsl',
    privateKey: require('fs').readFileSync('/home/adamsl/.ssh/id_rsa')
    });

    this.output = "";
    // this.syntax = "ls -l";
    this.send = function() {

    }

}

module.exports = Command;