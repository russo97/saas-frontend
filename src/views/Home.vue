<template>
  <VContainer>
    <VBtn @click="sanctum">
      Sanctum
    </VBtn>

    <VBtn @click="login">
      Login
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

function login () {
  axios.post('http://localhost/login', {
    email: 'test@example.com',
    password: 'password'
  }).then(response => {
    console.log(response)
  })
}
</script>
