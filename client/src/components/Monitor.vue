<template>
  <div class="content">
    <div class="grid-container" style="border: 1px solid">
      <div class="grid-item"></div>
      <div class="grid-item">ACP</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Run Status</div>
      <div class="grid-item acprunstatus">acp run status</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Alert Count</div>
      <div class="grid-item">{{ customers.acp.numberOfAlerts }}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Blotter Count</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">TAC</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>
    </div>
  </div>
</template>


<script>

import Regex from "../../src/Regex";


export default {
  name: "monitor",
  props: {
    customers: {
      type: Object,
      default: function () {},
    },

    commandObject: {
      type: Object,
      default: function () {},
    },

  },

  computed: {
    // vueProcessedOutput: function () {
    //     this.customers = this.commandObject.processedOutput; 
    //     return "output changed to this on Saturday:" + this.output;
    // },
  },  
    
  mounted() {
      this.regex            = new Regex();
      this.alertPopulator   = require ( "../../../parsingTools/AlertPopulator.js" );
  },

  methods: {
      checkServerStatus: function( rawArrayArg ) {
            for ( var x = 0; x < rawArrayArg.length; x++ ) {
                if ( this.regex.matchedString( rawArrayArg[ x ])) {
                    return true;
                }
            }
            return false;
      },
  }
};
</script>


<style scoped>
.grid-container {
  /* variables */
  --normal_cell_width: 0.6fr;

  display: grid;
  grid-template-columns:
    var(--normal_cell_width) var(--normal_cell_width) var(--normal_cell_width)
    1.9fr;
  grid-template-rows: 0.8fr 0.3fr 0.3fr 0.3fr 0.3fr 4fr;
  gap: 0px 0px;
}

.grid-item {
  background-color: #fcfcfc;
  border: 1px solid;
  padding: 10px;
}
</style>

