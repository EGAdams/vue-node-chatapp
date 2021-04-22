<template>
  <div id="app">
    <div class="header">
      <h1>Terminal</h1>
      <p class="username">Admin: {{ username }}</p>
      <p class="online">Online: {{ users.length }}</p>
    </div>
    <ChatRoom
      v-bind:messages =     "messages"
      v-on:checkRunStatus = "this.checkRunStatus"
      v-on:alertCheck =     "this.alertCheck"
      v-on:blotterCheck =     "this.blotterCheck"
      v-on:sendMessage =    "this.sendMessage"
      v-on:sendCommand =    "this.sendCommand"
      v-on:processCommand = "this.processCommand"
    />

    <Monitor
      v-bind:customers = "customers"
    />

    <GenericCommand 
    
    />

  </div>
</template>

<script>
import io from "socket.io-client";
import ChatRoom from "./components/ChatRoom";
import Monitor from './components/Monitor.vue';
import GenericCommand from './components/genericCommand.vue';

export default {
  name: "app",
  components: {
    ChatRoom,
    Monitor,
    GenericCommand
  },
  data: function () {
    return {
      username: "",
      socket: io("http://localhost:3000"),
      messages: [],
      customers: [],
      users: [],
    };
  },
  methods: {
    joinServer: function () {
      this.socket.on("loggedIn", (data) => {
        // console.log( "loggedIn fired!" );
        this.messages = data.messages;
        this.users = data.users;
        this.socket.emit("newuser", this.username);
      });

      this.listen();
    },

    listen: function () {
      
      this.socket.on("userOnline", (user) => {
        // console.log( "userOnline fired!" );
        this.users.push(user);
      });
      
      this.socket.on("userLeft", (user) => {
        // console.log( "user left!" );
        this.users.splice(this.users.indexOf(user), 1);
      });
      
      this.socket.on("msg", (message) => {
        this.messages.push(message);
      });

      this.socket.on( "gotData" , ( customers) => {
        //   console.log( "got data!" );
        //   console.log( "command output: customers.acp = ["+ customers.acp.numberOfAlerts + "]" );
          this.customers = customers;
      });
    },

    sendMessage: function (message) {
      // console.log( "sendMessage called...");
      this.socket.emit("msg", message);
    },

    sendCommand: function ( commandObject ) {
    //   console.log( 'caught sendCommand.' );
    //   console.log( 'command object name: ' + commandObject.name );
    //   console.log( 'commandObject target: ' + commandObject.targetMachine );
      this.socket.emit("sendCommand", commandObject );
    },

    checkRunStatus: function (message) {
    //   console.log("caught sendCommand.  sending command..." + message);
      this.socket.emit("checkRunStatus", message);
    },

    alertCheck: function (message) {
    //   console.log("caught alertcheck.  sending command..." + message);
      this.socket.emit("alertCheck", message);
    },

    blotterCheck: function (message) {
    //   console.log("caught blotterCheck.  sending command..." + message);
      this.socket.emit("blotterCheck", message);
    },

    processCommand: function( commandObject ) {
        // console.log( "emitting process command to socket from App.vue... " );
        this.socket.emit( "processCommand", commandObject );
    }

  },
  mounted: function () {
    this.username = "jane doe"; //prompt("What is your username?", "Anonymous");

    if (!this.username) {
      this.username = "Anonymous";
    }

    this.joinServer();
  },
};
</script>

<style lang="scss">
body {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  color: #2c3e50;
  margin: 0;
  padding: 0;
}

#app {
  display: flex;
  flex-direction: column;
  height: 100vh;
  width: 100%;
  max-width: 768px;
  margin: 0 auto;
  padding: 15px;
  box-sizing: border-box;
}
</style>
