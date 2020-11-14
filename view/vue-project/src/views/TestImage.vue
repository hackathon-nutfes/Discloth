<template>
  <div>
    <h1>TestImage</h1>
    <v-file-input multiple v-model="image" label="File input"></v-file-input>
    <v-form ref="form">
      <v-text-field
        label="user_id"
        v-model.number="user_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="gender_id"
        v-model.number="gender_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="brand_id"
        v-model.number="brand_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="color_id"
        v-model.number="color_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="kind_id"
        v-model.number="kind_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="season_id"
        v-model.number="season_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="size_id"
        v-model.number="size_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="design_id"
        v-model.number="design_id"
        outlined
        ></v-text-field>
      <v-text-field
        label="price_id"
        v-model.number="price_id"
        outlined
        ></v-text-field>
    </v-form>
    <p>{{ image }}</p>
    <p>{{ user_id }}</p>
    <p>{{ gender_id }}</p>
    <p>{{ brand_id }}</p>
    <p>{{ color_id }}</p>
    <p>{{ kind_id }}</p>
    <p>{{ season_id }}</p>
    <p>{{ size_id }}</p>
    <p>{{ design_id }}</p>
    <p>{{ price_id }}</p>
    <v-btn color="blue darken-1" block @click="submit">登録</v-btn>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      image: [],
      user_id: [],
      gender_id:[],
      brand_id:[],
      color_id:[],
      kind_id:[],
      season_id:[],
      size_id:[],
      design_id:[],
      price_id:[],
    }
  },
  methods: {
    submit: function() {
      const url = 'http://localhost:3000/items'
      let params = new URLSearchParams();
      params.append('image', this.image);
      params.append('user_id', this.user_id);
      params.append('gender_id', this.gender_id);
      params.append('brand_id', this.brand_id);
      params.append('color_id', this.color_id);
      params.append('kind_id', this.kind_id);
      params.append('season_id', this.season_id);
      params.append('size_id', this.design_id);
      params.append('price_id', this.price_id);
      axios.defaults.headers.common['Content-Type'] = 'application/json';
      axios.post(url, params).then(
        (response) => {
          console.log('response:', response)
          this.$router.push('MyPage')
        },
        (error) => {
          console.log('登録できませんでした')
          return error;
        }
      )
    }
  }
}
</script>
