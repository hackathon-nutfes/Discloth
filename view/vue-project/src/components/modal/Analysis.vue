<template>
<v-card
outlined
class="mx-auto"
height="600"
>
  <v-card-title class="headline">
	WHAT COLOR
  </v-card-title>
	<v-card-text>
    Do you remember how many pants you have bought in your life?
	</v-card-text>

 <div>
  <v-divider></v-divider>
	<v-card-title>
    PANTS
	</v-card-title>
    <v-progress-linear
      v-model="power"
      color="amber"
      height="25">
			<strong>{{ Math.ceil(power) }}</strong>
    </v-progress-linear>

    <br>

    <v-progress-linear
      v-model="skill"
      color="blue-grey"
      height="25"
    >
      <template v-slot:default="{ value }">
        <strong>{{ Math.ceil(value) }}</strong>
      </template>
    </v-progress-linear>

    <br>

    <v-progress-linear
      v-model="knowledge"
      height="25"
    >
      <strong>{{ Math.ceil(knowledge) }}</strong>
    </v-progress-linear>
  </div>

 <div>
  <v-divider></v-divider>
	<v-card-title>
	SOCKS
	</v-card-title>
    <v-progress-linear
      v-model="power"
      color="black"
      dark
      height="25">
			<strong>{{ Math.ceil(power) }}</strong>
    </v-progress-linear>

    <br>

    <v-progress-linear
      v-model="skill"
      color="blue-grey"
      height="25"
    >
      <template v-slot:default="{ value }">
        <strong>{{ Math.ceil(value) }}</strong>
      </template>
    </v-progress-linear>

    <br>

    <v-progress-linear
      v-model="knowledge"
      height="25"
    >
      <strong>{{ Math.ceil(knowledge) }}</strong>
    </v-progress-linear>
  </div>

 </v-card>
</template>
<script>
  export default {
    data: () => ({
      skill: 20,
      knowledge: 33,
      power: 78,
    }),
  }
</script>
