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
                        <v-container>
                        <v-row>
                        <v-col cols="1"></v-col>
                        <v-col cols="10">
                            <v-card-title class="headline">
                                closetを開く(ログイン)
                            </v-card-title>
                            <v-card-text>
                                <v-text-field
                                    label="フルネーム"
                                    v-model="name"
                                    required
                                    clearable
                                ></v-text-field>
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
                                    @click="dialog = false"
                                >
                                    ログイン
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