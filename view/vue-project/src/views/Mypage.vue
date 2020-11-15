<template>
  <div>
    <Header />
    <v-row>
    <v-img src="../assets/bgimage.jpg"></v-img>
    </v-row>
    <v-row>
    <h1>Elegance is not standing out, but being remembered.</h1>
    </v-row>
    <Footer />
    
  </div>
</template>

<script>
import Header from "../components/Header.vue"
import Footer from "../components/Footer.vue"
export default {
	components: {
		Header,
		Footer
	}
}
</script>

