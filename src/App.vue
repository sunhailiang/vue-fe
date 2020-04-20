<template>
  <div id="app">
    <ul>
      <li v-for="item in users"
          :key="item.id">
        {{item}}
      </li>
    </ul>
  </div>
</template>

<script>

import axios from 'axios'
export default {
  name: 'App',
  data () {
    return {
      users: ''
    }
  },
  mounted () {
    console.log("什么贵?", process.env)
    axios.get(process.env.VUE_APP_API_BASE_URL + "/users").then(res => {
      this.users = res.data
    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
