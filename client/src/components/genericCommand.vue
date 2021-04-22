<template>
  <div class="grid-container">
  <div class="dropdown"></div>
  <div class="output"></div>
  <div class="stat"></div>
  <div class="execute"></div>
</div>
</template>

<script>
    export default {};
</script>

<style scoped>
.grid-container {
  display: grid;
  grid-template-columns: 0.3fr 1.5fr 0.5fr 1.4fr;
  grid-template-rows: 0.4fr 1.6fr 0.4fr [n] 0.4fr 3.5fr;
  gap: 0px 0px;
  grid-template-areas:
    ". . . ."
    ". output output ."
    ". dropdown stat ."
    ". . execute ."
    ". . . .";
}

.dropdown {
  grid-area: dropdown;
}

.output {
  grid-area: output;
}

.stat {
  grid-area: stat;
}

.execute {
  grid-area: execute;
}
</style>
