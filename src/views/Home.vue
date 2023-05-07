<template>
  <VContainer>
    <VBtn @click="sanctum">
      Sanctum
    </VBtn>
  </VContainer>
</template>

<script setup>
import axios from 'axios'

function sanctum () {
  axios.get('http://localhost/sanctum/csrf-cookie').then(response => {
    console.log(response);
  })
}
</script>
