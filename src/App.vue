<script setup lang="ts">
import { ref } from 'vue';
const count = ref(10)

</script>

<template>
  <div>
    <button @click="count++">count {{ count }}</button>
    <h1>Hii bro</h1>
    <h1>New github action</h1>
    <h1>Done</h1>
  </div>
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}

.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}

.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
