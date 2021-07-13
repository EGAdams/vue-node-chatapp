<template>
  <div>
    <h1>
      Hello! Im the command processor
      {{ processedOutput }}
    </h1>
    <h1>
      {{ commandObject.description }}
    </h1>
  </div>
</template>

<script>
import Regex from '../../src/Regex.js'

export default {
  name: 'check-server-output-processor',

  props: {
    output: {
      type: String,
      default: 'generic-command default'
    },

    commandObject: {
      type: Object,
      default: function () {}
    },

    styleObject: {
      background: 'yellow'
    }
  },

  computed: {
    processedOutput: function () {
      if (!(typeof this.commandObject.regex_map == 'undefined')) {
        this.regex.setClip(this.commandObject.regex_map.regexClip)
        var serverRunning = this.checkServerStatus(
          this.commandObject.output.split(/\r?\n/)
        )

        if (serverRunning) {
          this.setGreen()
        }
      }
      return 'output changed to this:' + this.output
    }
  },

  mounted () {
    this.regex = new Regex()
  },

  methods: {
    checkServerStatus: function (rawArrayArg) {
      for (var x = 0; x < rawArrayArg.length; x++) {
        if (this.regex.matchedString(rawArrayArg[x])) {
          return true
        }
      }
      return false
    },

    setGreen: function () {
      this.styleObject.background = 'lightgreen'
    }
  }
}
</script>

<style></style>
