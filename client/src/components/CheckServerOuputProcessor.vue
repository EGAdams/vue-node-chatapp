<template>
  <div>
    <h1>
      Hello! Im the command processor
      {{ processedOutput }}
    </h1>
  </div>
</template>

<script>
export default {
  name: "check-server-output-processor",
  props: {
    output: {
      type: String,
      default: "generic-command default",
    },
    commandObject: {
      type: Object,
      default: function () {},
    },
  },
  data() {
    return {
      counter: 0,
    };
  },
  computed: {
    processedOutput: function () {
      alert( this.commandObject.regex_map.regexClip[ 0 ].name )
      return "output changed to this:" + this.output;

    },
  },
};
</script>

<style>
</style>