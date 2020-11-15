<template>
  <v-footer
    color="white"
		app
    padless
  >
      <v-card
        flat
        tile
        width="100%"
        class="text-center"
      >
		<v-divider></v-divider>
    <v-row
      justify="center"
      no-gutters
    >
      <v-btn
        color="#E91E63"
        text
        rounded
        class="my-2"
				@click.stop="dialog1 = true"
      >
			Display
      </v-btn>
			<v-btn
				color="#E91E63"
				text
				class="my-2"
				@click.stop="dialog2 = true"
			>
			Analysis
			</v-btn>
      <v-btn
       v-show="!hidden"
       color="#42A5F5"
       dark
       absolute
       top
       right
       fab
       >
        <v-icon>mdi-plus</v-icon>
    </v-btn>

    <v-dialog
      v-model="dialog1"
      max-width="600"
			hide-overlay
    >
    <Analysis />
   </v-dialog>
     <v-dialog
      v-model="dialog2"
      max-width="600"
			hide-overlay
      >
      <Display />
     </v-dialog>

    </v-row>
		</v-card>
  </v-footer>
</template>
<script>
  import Analysis from './modal/Analysis.vue'
  import Display from './modal/Display.vue'
  export default {
    components: {
      Analysis,
      Display,
    },
    data () {
      return {
        dialog1: false,
				dialog2: false,
      }
    },
  }
</script>
