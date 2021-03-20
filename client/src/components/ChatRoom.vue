<template>
   
	<div class="chat-window">
		<div class="messages">
			<div class="message" v-for="message in messages" v-bind:key="message._id">
				<div class="username">{{message.username}}</div>
				<div class="message-text">{{message.msg}}</div>
			</div>
		</div>
        <div>
            <button v-on:click="alertCheck">Alert Check</button>
            <button v-on:click="blotterCheck">Blotter Check</button>
            <button v-on:click="checkRunStatus">Check Run Status</button>
            <button v-on:click="sendCommand">Send Command</button>
        </div>
		<form class="input-container" v-on:submit="sendMessage">
			<input type="text" v-model="msg">
			<button v-on:click="sendMessage" v-bind:disabled="!msg">Send</button>
		</form>
            <div class="statusTable">
        <table>
            <tr>
                <td style="background-color: yellow">status1</td>
            </tr>
            <tr>
                <td>status2</td>
            </tr>
        </table>        
    </div> 
	</div>
</template>

<script>
export default {
	name: 'chatroom',
	props: ['messages'],
	data: function () {
		return {
			msg: ""
		}
	},
	methods: {
		sendMessage: function () {
			if (!this.msg) {
				alert("Please enter a message");
				return;
			}

			this.$emit('sendMessage', this.msg);
			this.msg = "";
		},
        sendCommand: function() {
            console.log( "emitting send command..." );
            var commandObject = {};
            commandObject.name          = "ls";
            commandObject.targetMachine = "dev";
            this.$emit('sendCommand', commandObject );
        },

        checkRunStatus: function() {
            console.log( "emitting check run status command..." );
            this.$emit('checkRunStatus', 'test' );
        },

        alertCheck: function() {
            console.log( "emitting alert check command..." );
            this.$emit('alertCheck', 'test alert check' );
        }, 

        blotterCheck: function() {
            console.log( "emitting blotter check command..." );
            this.$emit('blotterCheck', 'test blotter check' );
        }
	}
}
</script>

<style lang="scss" scoped>
.chat-window {
	flex: 1;
	display: flex;
	flex-direction: column;
	background-color: #F9F9F9;
	box-shadow: 1px 1px 6px 0px rgba(0, 0, 0, 0.15);

	.messages {
		flex: 1;
		overflow: scroll;

		.message {
			display: flex;
			border-bottom: 1px solid #EFEFEF;
			padding: 10px;

			&:last-of-type {
				border-bottom: none;
			}

			.username {
				width: 100px;
				margin-right: 15px;
			}

			.message-text {
				flex: 1;
			}
		}
	}
	.input-container {
		display: flex;

		input {
			flex: 1;
			height: 35px;
			font-size: 18px;
			box-sizing: border-box;
		}

		button {
			width: 75px;
			height: 35px;
			box-sizing: border-box;
		}
	}
}
</style>
