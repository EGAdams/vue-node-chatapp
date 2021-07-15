<template>
  <div class="grid-container">
    <div class="dropdown">
      <div id="v-model-select-dynamic" class="demo">
        <select v-model="selected">
          <option
            v-for="option in options"
            :key="option.id"
            :value="option.value">
            {{ option.text }}
          </option>
        </select>
        <span>Selected: {{ selected }}</span>
      </div>
    </div>
    <div class="output">{{ output }}</div>

    <check-server-ouput-processor
      class="checkserver"
      v-bind:output="output"
      v-bind:commandObject="commandObject"
      v-bind:styleObject="styleObject"
    />

    <Monitor v-bind:commandObject="commandObject" />

    <div :style="styleObject" class="stat">stat</div>
    <div class="execute">
      <button @click="execute">Execute Command</button>
      <button @click="reExecute">Re-execute Command</button>
    </div>
  </div>
</template>

<script>
import CheckServerOuputProcessor from "./CheckServerOuputProcessor.vue";
import Monitor from './Monitor.vue';
export default {
  components: { CheckServerOuputProcessor,
                Monitor 
  },
  name: "generic-command",
  props: {
    output: {
      type: String,
      default: "generic-command default",
    },

    commandObject: {
      type: Object,
      default: function () {},
    },

    styleObject: {
      background: "yellow",
    },
  },

  data() {
    return {
      currentCommand: "",
      commands: {},
      customers: {
          acp: {
              numberOfAlerts: "0",
          },
      },
      selected: "A",
      options: [
        { text: "Directory Listing", value: "ls" },
        { text: "Show Alert Status", value: "./alertCheck.sh" },
        { text: "Test Alert Status", value: "testAlertCheck" },
        { text: "Present Working Directory", value: "pwd" },
        { text: "Check Server Status", value: "checkServer" },
      ],
    };
  },

  methods: {
    execute() {
      this.$emit( "sendCommand", this.commands[ this.selected ]);
    },
    reExecute() {

      var newCommand = this.commands[ this.selected ];
      this.commandObject.executable = newCommand.executable;
      this.commandObject.args       = newCommand.args;
      this.commandObject.description = newCommand.description;
      this.commandObject.targetMachine = "thispc";
      this.commandObject.regex_map_filename = newCommand.regex_map_filename;

      this.$emit( "sendCommand", this.commandObject );
    }
  },

  mounted: function () {
    (this.commands[ "ls" ] = {
        executable: "ls",
        args: " -la ",
        description: "Directory Listing",
        targetMachine: "thispc",
        commandObject: "CommandExecutor",
        output: "",
        status: "",
        commandMethod: "execute",
        regex_map_filename: "lsRegex.txt",
    }),
    (this.commands[ "checkServer" ] = {
        executable: "ps ",
        args: " -ef ",
        description: "Check Server Status",
        targetMachine: "thispc",
        commandObject: "CommandExecutor",
        output: "",
        status: "",
        commandMethod: "execute",
        regex_map_filename: "checkServerRegex.txt",
    }),
    (this.commands[ "testAlertCheck" ] = {
        executable: "cat ",
        args: " alertCheck_1615899731770.txt ",
        description: "Test Alert Monitor",
        targetMachine: "thispc",
        commandObject: "CommandExecutor",
        output: "",
        status: "",
        commandMethod: "execute",
        regex_map_filename: "customerAlertRegex.txt",
        outputProcessor: "AlertPopulator"
    }),
        (this.commands[ "testBlotterCheck" ] = {
        executable: "cat ",
        args: " blotterCheck_1616503957611.txt ",
        description: "The Blotter Populator",
        targetMachine: "thispc",
        commandObject: "CommandExecutor",
        output: "",
        status: "",
        commandMethod: "execute",
        regex_map_filename: "customerAlertRegex.txt",
        outputProcessor: "BlotterPopulator"
    }),
    (this.commands[ "showAlerts" ] = {
        executable: "alertCheck.sh ",
        args: "",
        description: "Show Alert Status",
        targetMachine: "dev",
        commandObject: "CommandExecutor",
        output: "",
        status: "",
        commandMethod: "execute",
        regex_map_filename: "customerAlertRegex.txt",
        outputProcessor: "AlertPopulator"
    });
  },
};
</script>

<style scoped>
.grid-container {
  margin-top: 12px;
  display: grid;
  grid-template-columns: 2.8fr 1.5fr;
  grid-template-rows: 14.8fr 0.8fr 1.4fr;
  gap: 0px 0px;
  grid-template-areas:
    " checkserver output"
    " dropdown stat"
    " . execute";
}

.dropdown,
.output,
.stat,
.checkserver,
.execute {
  border: solid 1px;
}

.dropdown {
  grid-area: dropdown;
  border-top: none;
}

.output {
  grid-area: output;
}

.stat {
  grid-area: stat;
  border-top: none;
  border-left: none;
}

.execute {
  grid-area: execute;
  border-top: none;
}
</style>
