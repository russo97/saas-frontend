<template>
  <VContainer>
    <VBtn @click="sanctum">
      Sanctum
    </VBtn>
  </VContainer>
</template>

<script setup>
import axios from 'axios';

axios.defaults.withCredentials = true;

function sanctum () {
  axios.get('http://localhost/sanctum/csrf-cookie').then(response => {
    console.log(response);
  });
}
</script>
