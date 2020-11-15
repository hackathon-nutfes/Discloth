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
                        block
                        color="orange"
                        x-large dark
                        fab
                        v-bind="attrs"
                        v-on="on"
                        >
                        <v-icon>mdi-account-circle</v-icon>
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
                                closetを開く(ログイン)
                            </v-card-title>
                            <v-card-text>
                                <v-text-field
                                    label="メールアドレス"
                                    background-color="white"
                                    v-model="email"
                                    required
                                    clearable
                                ></v-text-field>
                                <v-text-field
                                    label="パスワード"
                                    v-model="password"
                                    :type="show_pass ? 'password' : 'text'"
                                    hint = "確認してください"
                                    persistent-hint
                                    @click:append="show_pass = !show_pass"
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
                                    ログイン
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
    name: 'Login',
	data () {
		return {
            email: [],
            password: [],
			dialog :false,
            show_pass: true,
            formHasErrors: false,
		}
	},

   computed: {
        form () {
            return {
                email: null,
                password: null,
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

            const url = 'http://localhost:3000/api/auth/sign_in'
            var params = new URLSearchParams();
            params.append('email', this.email);
            params.append('password', this.password);
            axios.defaults.headers.common['Content-Type'] = 'application/json';
            axios.post(url, params).then(
                (response) => {

                    localStorage.setItem('access-token', response.headers['access-token'])
                    localStorage.setItem('client', response.headers['client'])
                    localStorage.setItem('uid', response.headers['uid'])
                    localStorage.setItem('token-type', response.headers['token-type'])
                    console.log(response)
          console.log(response.headers['access-token'])
          console.log(response.headers['client'])
          console.log(response.headers['uid'])
                    this.$router.push('Mypage')
                },
                (error) => {
                return error
                }
            )
        },
    }
}
</script>