<template>
      <v-card
			outlined
			class="mx-auto"
			height="600"
			>
        <v-card-title class="headline">
          WHICH ONE
        </v-card-title>

        <v-card-text>
          Keep looking. Don’t settle.
        </v-card-text>

      <v-divider></v-divider>

      <v-row align-content="center">
      <v-col cols="6" align="center">
        <v-img src="../../assets/bgimage.jpg"></v-img>
       </v-col>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
      </v-col>
      </v-row>
      <v-divider></v-divider>


      <v-row align-content=center>
      <v-col cols="6">
        <v-img src="../../assets/green.jpg"
            @click.stop="dialog = true"
          ></v-img>
       </v-col>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
      </v-col>
      </v-row>
      <v-divider></v-divider>
 

      <v-row align-content=center>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
       </v-col>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
      </v-col>
      </v-row>
      <v-divider></v-divider>
 

      <v-row align-content=center>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
       </v-col>
      <v-col cols="6">
        <v-img src="../../assets/bgimage.jpg"></v-img>
      </v-col>
      </v-row>
      <v-divider></v-divider>
 
      <v-row></v-row>
      <v-row></v-row>
      <v-dialog
        v-model="dialog"
        max-width="600"
      >
      <Category />
      </v-dialog>
      </v-card>
</template>
<script>
  import Category from './smodal/Category.vue'
  export default {
    components: {
      Category ,
    },
    data () {
      return {
        dialog: false,
      }
    },
  }
</script>
