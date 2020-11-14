<template> 
  <v-app>
    <v-content class="bg">
      <Login />
      <Createid />
    </v-content>
  </v-app>
</template> 

<script> 
  import Createid from "../components/Createid.vue"
  import Login from "../components/Login.vue"
  export default { 
    name: "Welcome",
    components: {
      Login,
      Createid
    }
  } 
</script> 
<style>
.bg {
  background-image: url("../assets/bgimage.jpg");
  background-attachment: fixed;
  background-size: cover;
}
</style>
