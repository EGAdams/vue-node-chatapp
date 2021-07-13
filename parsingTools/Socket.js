
var io = require( "socket.io-client" );

class Socket {

    constructor() {
        this.socket = io("http://localhost:3000");
    }

    emit( listenerText, objectToEmit ) {
        this.socket.emit( listenerText, objectToEmit );
    }

    testMe() {
        var errors = new Array();
        var commandObject = {
            executable: "Type ",
            args: " alertCheck_1615899731770.txt ",
            description: "Test Alert Monitor",
            targetMachine: "thispc",
            commandObject: "CommandExecutor",
            output: "",
            status: "",
            regex_map_filename: "customerAlertRegex.txt",
            outputProcessor: "AlertPopulator",
            processedOutput: {}
        };
        this.emit( "sendCommand", commandObject );
    }
}

module.exports = Socket;

