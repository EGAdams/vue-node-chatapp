
const EventEmitter  = require( 'events' );

class TheEmitter extends EventEmitter {
    foo() {
      this.emit('test');
    }
  }

  module.exports = TheEmitter;
