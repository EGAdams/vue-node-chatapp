<template>
  <div class="content">
    <div class="grid-container" style="border: 1px solid">
      <div class="grid-item">ACP</div>
      <div class="grid-item">{{ commandObject.processedOutput.acp.numberOfAlerts }}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Aegis</div>
      <div class="grid-item acprunstatus">{{ commandObject.processedOutput.aegis.numberOfAlerts }}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">BDB</div>
      <div class="grid-item">{{ commandObject.processedOutput.bdb.numberOfAlerts }}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">dev</div>
      <div class="grid-item">{{ commandObject.processedOutput.dev.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Gamma</div>
      <div class="grid-item">{{ commandObject.processedOutput.gamma.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">kovack</div>
      <div class="grid-item">{{ commandObject.processedOutput.kovack.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">ldl</div>
      <div class="grid-item">{{ commandObject.processedOutput.ldl.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">kovack</div>
      <div class="grid-item">{{ commandObject.processedOutput.kovack.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Allaria</div>
      <div class="grid-item">{{ commandObject.processedOutput.allaria.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">OFS</div>
      <div class="grid-item">{{ commandObject.processedOutput.ofs.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">UCAP</div>
      <div class="grid-item">{{ commandObject.processedOutput.ucap.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Ultralat</div>
      <div class="grid-item">{{ commandObject.processedOutput.ultralat.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">WCM</div>
      <div class="grid-item">{{ commandObject.processedOutput.wcm.numberOfAlerts}}</div>
      <div class="grid-item"></div>
      <div class="grid-item"></div>

      <div class="grid-item">Newb</div>
      <div class="grid-item">{{ commandObject.processedOutput.newb.numberOfAlerts}}</div>
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
  grid-template-rows: 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr 0.3fr;
  gap: 0px 0px;
}

.grid-item {
  background-color: #fcfcfc;
  border: 1px solid;
  padding: 10px;
}
</style>

