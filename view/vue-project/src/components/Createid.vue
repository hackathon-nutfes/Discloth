 <template>
    <v-container>
      <v-row justify="center">
        <v-dialog
          v-model="dialog"
          persistent
          max-width="400"
          >
          <template v-slot:activator="{ on, attrs }">
          <v-row></v-row>
            <v-row>
              <v-col cols="10"></v-col>
              <v-col cols="1">
                <v-btn
                  color="orange"
                  x-large dark
                  fab
                  v-bind="attrs"
                  v-on="on"
                >
                <v-icon dark>mdi-plus</v-icon>
                </v-btn>
              </v-col>
               <v-col cols="1"></v-col>
            </v-row>
          </template>
            <v-card>
                <v-row>
                  <v-col cols="1"></v-col>
                  <v-col cols="10">
                    <v-card-title class="headline">
                      closetを買う(新規登録)
                    </v-card-title>
                    <v-card-text>
                      <v-text-field
                        label="フルネーム"
                        v-model="name"
                        clearable
                        required
                      ></v-text-field>
                      <v-text-field
                        label="メールアドレス"
                        v-model="email"
                        clearable
                        required
                      ></v-text-field>
                      <v-text-field
                        label="パスワード"
                        v-model="password"
                        :type="show_pass ? 'password' : 'text'"
                        counter
                        clearable
                        @click:append="show_pass = !show_pass"
                        required
                      ></v-text-field>
                      <v-text-field
                        label="パスワードの再入力"
                        v-model="password_confirmation"
                        :type="show_pass_confirmation ? 'password' : 'text'"
                        hint="確認してください"
                        persistent-hint
                        counter
                        @click:append="show_pass_confirmation = !show_pass_confirmation"
                        clearable
                        required
                        ></v-text-field>
                    </v-card-text>
                    <v-card-actions>
                      <v-btn
                        color="green darken-1"
                        text
                        @click="dialog = false"
                      >
                        キャンセル
                      </v-btn>
                      <v-btn
                        color="green darken-1"
                        text
                        @click="submit"
                      >
                        登録
                      </v-btn>
                    </v-card-actions>
                  </v-col>
                  <v-col cols="1"></v-col>
                </v-row>
            </v-card>
        </v-dialog>
      </v-row>   
    </v-container>
 </template>

<script>
import axios from 'axios'
export default {
  name: 'Createid' ,
	data () {
		return {
      name: [],
      email: [],
      password: [],
      password_confirmation: [],

			dialog :false,
      show_pass: true,
      show_pass_confirmation: true,
      formHasErrors: false,
		}
	},

  computed: {
    form () {
      return {
        name: null,
        email: null,
        password: null,
        password_confirmation: null,
      }
    },
  },

  methods: {
    open: function() {
      this.show = true
    },
    cancel: function() {
      Object.keys(this.form).forEach(f => {
        this.$refs[f].reset()
      })
      this.show = false
    },
    submit: function() {
      const url = 'http://localhost:3000/api/auth'
      var params = new URLSearchParams();
      params.append('name', this.name);
      params.append('email', this.email);
      params.append('password', this.password);
      params.append('password_confirmation', this.password_confirmation);
      axios.defaults.headers.common['Content-Type'] = 'application/json';
      axios.post(url, params).then(
        (response) => {
          localStorage.setItem('access-token', response.headers['access-token'])
          localStorage.setItem('client', response.headers['client'])
          localStorage.setItem('uid', response.headers['uid'])
          localStorage.setItem('token-type', response.headers['token-type'])
          this.$router.push('Mypage')
        },
        (error) => {
          return error
        }
      )
    }
  }
}


</script>
