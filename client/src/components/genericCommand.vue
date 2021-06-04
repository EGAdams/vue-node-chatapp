<template>
  <div class="grid-container">
    <div class="dropdown">
      <div id="v-model-select-dynamic" class="demo">
        <select v-model="selected">
          <option
            v-for="option in options"
            :key="option.id"
            :value="option.value"
          >
            {{ option.text }}
          </option>
        </select>
        <span>Selected: {{ selected }}</span>
      </div>
    </div>
    <div class="output">{{ output }}</div>
    
    <check-server-ouput-processor class="checkserver" 
        v-bind:output = "output"
        v-bind:commandObject="commandObject"
        v-bind:styleObject="styleObject"
    />
    
    <div :style="styleObject" class="stat">status</div>
    <div class="execute">
      <button @click="execute">Execute Command</button>
    </div>
  </div>
</template>

<script>
import CheckServerOuputProcessor from './CheckServerOuputProcessor.vue';
export default {
  components: { CheckServerOuputProcessor },
  name: "generic-command",
  props: {
    output: {
      type: String,
      default: "generic-command default",
    },

    commandObject: {
        type: Object,
        default: function(){}
    },

    styleObject: {
      background: "yellow",
    },
  },

  data() {
    return {
      currentCommand: "",
      commands: {},
      selected: "A",
      options: [
        { text: "Directory Listing", value: "ls" },
        { text: "Change Directory", value: "cd" },
        { text: "Present Working Directory", value: "pwd" },
        { text: "Check Server Status", value: "checkServer" },
      ],
    };
  },
  methods: {
    execute() {
      this.$emit("sendCommand", this.commands[ this.selected ]);
    },
  },

  mounted: function () {
    (this.commands[ "ls" ] = {
      executable: "ls",
      args:" -la ",
      description: "Directory Listing",
      targetMachine: "thispc",
      commandObject: "CommandExecutor",
      output: "",
      status: "",
      commandMethod: "execute",
      regex_map_filename: "lsRegex.txt"
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
        regex_map_filename: "checkServerRegex.txt"
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
