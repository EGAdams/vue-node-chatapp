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
    export default {
        name: "monitor",
        props: ["customers"]
    };    
</script>


<style scoped>

.grid-container {
  
  /* variables */
  --normal_cell_width: 0.6fr;
  
  display: grid;
  grid-template-columns: var( --normal_cell_width) var( --normal_cell_width) var( --normal_cell_width) 1.9fr;
  grid-template-rows: 0.8fr 0.3fr 0.3fr 0.3fr 0.3fr 4fr;
  gap: 0px 0px;
  
}

.grid-item {
  background-color: #fcfcfc;
  border: 1px solid;
  padding: 10px;
}

</style>