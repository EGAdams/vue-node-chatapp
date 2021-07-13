<template>
  <div class="content">
    <div class="grid-container" style="border: 1px solid">
      <div class="grid-item"></div>
      <div class="grid-item">ACP</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">ACP</div>
      <div class="grid-item acprunstatus">acp run status</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">ACP</div>
      <div class="grid-item">{{ commandObject.processedOutput.acp.numberOfAlerts }}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>
      <div class="grid-item">Allaria</div>

      <div class="grid-item">{{ commandObject.processedOutput.allaria.numberOfAlerts }}</div>
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



export default {
  name: "monitor",
  data() {
    return {
        customers: {},
        // commandObject: {
        //     processedOutput: { 
        //         acp: {
        //             numberOfAlerts: "0"
        //         }
        //     },

        // }
    }
  },  

  props: {
    output: {
      type: String,
      default: "generic-command default",
    },

    commandObject: {
        processedOutput: { 
            acp: {
                numberOfAlerts: "0"
            }
        },

    },

    styleObject: {
      background: "yellow",
    },
  },

  computed: {
    // vueProcessedOutput: function () {
    //     this.customers = this.commandObject.processedOutput; 
    //     return "output changed to this on Saturday:" + this.output;
    // },
    
  },  
    
  mounted() {
      // this.regex            = new Regex();
      // this.alertPopulator   = require ( "../../../parsingTools/AlertPopulator.js" );
      this.commandObject.processedOutput.acp.numberOfAlerts = '0';
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
  --normal_cell_width: 0.5fr;

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

