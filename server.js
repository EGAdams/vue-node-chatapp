const app = require( "express" )();
const http = require( "http" ).Server(app);
const io    = require( "socket.io"  )( http );
const Storage = require( './Storage' )

let users = [];
let messages = [];
let output = [];
let index = 0;
let command = "";

var Client = require('ssh2').Client;

;

var conn = new Client();
conn.on('ready', function() {
  console.log('Client :: ready');
  conn.shell(function(err, stream) {
    if (err) throw err;
    stream.on('close', function() {
      console.log('Stream :: close');
      conn.end();
    }).on('data', function(data) {
      console.log('OUTPUT: ' + data);
      // emitter.emit( 'gotData', data.toString());
    });
    // stream.end('./alertCheck.sh\n./blotterCheck.sh\nexit\n');
  });
}).connect({
  host: '10.170.150.4',
  //port: 22,
  username: 'adamsl',
  privateKey: require('fs').readFileSync('/home/adamsl/.ssh/id_rsa')
});

io.on("connection", socket => {
    console.log( "someone connected.");
	socket.emit('loggedIn', {
		users: users.map(s => s.username),
		messages: messages
	});

	socket.on('newuser', username => {
		console.log(`${username} has arrived at the party.`);
		socket.username = username;
		
		users.push(socket);
        console.log( "emitting user on line..." );
		io.emit('userOnline', socket.username);
	});

	socket.on('msg', msg => {
        let message = {
            index: index,
            username: socket.username,
            msg:msg
        }
        console.log( "pushing message..." )
        messages.push( messages );
        io.emit( 'msg', message );
        index++;
	});

    socket.on( 'sendCommand' , command => {
        console.log( 'catching send command...' );
        // stream.end('ls\nexit\n');
        conn.exec('./alertCheck.sh', function(err, stream) {
            if (err) {
              console.log('SECOND :: exec error: ' + err);
              return conn1.end();
            }
            stream.on('end', function() {
              // conn.end(); // close parent (and this) connection
            }).on('data', function(data) {
              console.log(data.toString());

                // store this data somewhere

              storage.store( data.toString())
              
            });
          });
    });

    socket.on( 'checkRunStatus' , command => {
        var storage = new Storage( "checkRunStatus" );
        console.log( 'catching check run status command...' );
        // stream.end('ls\nexit\n');
        conn.exec('ls -lart', function(err, stream) {
            if (err) {
              console.log('SECOND :: exec error: ' + err);
              return conn.end();
            }
            stream.on('end', function() {
              // conn.end(); // close parent (and this) connection
            }).on('data', function(data) {
              console.log(data.toString());
              output.push( data.toString());
              let message = {
                index: index,
                username: socket.username,
                msg:data.toString(),
            }
              console.log( "processing output..." );
              console.log( "output length: [" + output.length + "]" );
              console.log( output[0].toString());
              storage.store( output[0].toString());
              console.log( "done storing text to " + storage.getFilename());
            });
          });
    });

    socket.on( 'alertCheck' , command => {
        var storage = new Storage( "alertCheck" );
        console.log( 'catching alert check command...' );

        conn.exec('./alertCheck.sh', function(err, stream) {
            if (err) {
              console.log('SECOND :: exec error: ' + err);
              return conn.end();
            }
            stream.on('end', function() {
              // conn.end(); // close parent (and this) connection
            }).on('data', function(data) {
              console.log(data.toString());
              output.push( data.toString());
              storage.store( data.toString());
              let message = {
                index: index,
                username: socket.username,
                msg:data.toString(),
            }
              console.log( "processing output..." );
              console.log( "output length: [" + output.length + "]" );
              console.log( output[0].toString());
              console.log( "done storing text to " + storage.getFilename());
            });
          });
    });

    socket.on( 'blotterCheck' , command => {
        var storage = new Storage( "blotterCheck" );
        console.log( 'catching alert check command...' );

        conn.exec('./blotterCheck.sh', function(err, stream) {
            if (err) {
              console.log('SECOND :: exec error: ' + err);
              return conn.end();
            }
            stream.on('end', function() {
              // conn.end(); // close parent (and this) connection
            }).on('data', function(data) {
              console.log(data.toString());
              output.push( data.toString());
              storage.store( data.toString());
              let message = {
                index: index,
                username: socket.username,
                msg:data.toString(),
            }
              console.log( "processing output..." );
              console.log( "output length: [" + output.length + "]" );
              console.log( output[0].toString());
              console.log( "done storing text to " + storage.getFilename());
            });
          });
    });
	
	// Disconnect
	socket.on("disconnect", () => {
		console.log(`${socket.username} has left the party.`);
		io.emit("userLeft", socket.username);
		users.splice(users.indexOf(socket), 1);
	});
});



http.listen(process.env.PORT || 3000, () => {
	console.log("Listening on port %s", process.env.PORT || 3000);
});