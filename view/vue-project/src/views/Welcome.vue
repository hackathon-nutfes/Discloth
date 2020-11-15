<template> 
  <v-app>
    <v-content class="bg">
    <h1>おしゃれを片手に</h1>
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

<style>
h1{
  color:white;
  text-align: center;
  font-size: 110px;
  padding: 15px 30px;
  position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
  font-family: fantasy;
}
</style>