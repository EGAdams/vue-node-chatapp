<template>
  <div id="app">
    <div class="header">
      <h1>Terminal</h1>
      <p class="username">Admin: {{ username }}</p>
      <p class="online">Online: {{ users.length }}</p>
    </div>
    <ChatRoom
      v-bind:messages="messages"
      v-on:checkRunStatus="this.checkRunStatus"
      v-on:alertCheck="this.alertCheck"
      v-on:blotterCheck="this.blotterCheck"
      v-on:sendMessage="this.sendMessage"
      v-on:sendCommand="this.sendCommand"
      v-on:processCommand="this.processCommand"
    />

    <GenericCommand
      v-on:sendCommand="this.sendCommand"
      v-bind:output="output"
      v-bind:styleObject="styleObject"
      v-bind:commandObject="commandObject"
    />
  </div>
</template>

<script>
import io from "socket.io-client";
import ChatRoom from "./components/ChatRoom";

import GenericCommand from './components/genericCommand.vue';

export default {
  name: "app",
  computed: {
    output: function () {
        return this.outputText
    },
  },  
  components: {
    ChatRoom,
    GenericCommand,
  },
  data: function () {
    return {
      username: "",
      socket: io("http://localhost:3000"),
      messages: [],
      customers: [],
      commandObject: {},
      commands: {},
      users: [],
      outputText: "generic default.",
      currentCommand: "ls",
      styleObject: {
          background: "yellow"
      }
    };
  },
  methods: {
    joinServer: function () {
      this.socket.on("loggedIn", (data) => {
        this.messages = data.messages;
        this.users = data.users;
        this.socket.emit("newuser", this.username);
      });

      this.listen();
    },

    listen: function () {
      
      this.socket.on( "userOnline", ( user ) => {
        this.users.push(user);
      });
      
      this.socket.on("userLeft", ( user ) => {
        this.users.splice(this.users.indexOf( user ), 1);
      });
      
      this.socket.on("msg", ( message ) => {
        this.messages.push( message );
      });

      this.socket.on( "gotData" , function( commandObject ) {
          this.outputText = commandObject.output;
          this.styleObject.background = "yellow";
          this.commandObject = commandObject;

      }.bind( this ));
    },

    sendMessage: function (message) {
      this.socket.emit("msg", message);
    },

    sendCommand: function ( commandObject ) {
        this.socket.emit( "sendCommand", commandObject );
    },

    checkRunStatus: function ( message ) {
      this.socket.emit( "checkRunStatus", message);
    },

    alertCheck: function ( message ) {
      this.socket.emit( "alertCheck", message );
    },

    blotterCheck: function ( message ) {
      this.socket.emit("blotterCheck", message );
    },

    processCommand: function( commandObject ) {
        this.socket.emit( "processCommand", commandObject );
    }

  },
  mounted: function () {
    this.username = "jane doe"; 

    if ( !this.username ) {
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
