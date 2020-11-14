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
              <v-container>
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
                        @click="dialog = false"
                      >
                        登録
                      </v-btn>
                    </v-card-actions>
                  </v-col>
                  <v-col cols="1"></v-col>
                </v-row>
              </v-container>
            </v-card>
        </v-dialog>
      </v-row>   
    </v-container>
 </template>

<script>
export default {
	data () {
		return {
			dialog :false
		}
	}
}
</script>
