<template>
  <div>
    <v-app-bar app dark dense color="#E91E63">
      <v-row
        align="center"
      >
        <v-btn
          dark
					text
          @click.stop="drawer = !drawer"
        >
        <v-icon dark>mdi-format-list-bulleted</v-icon>
        </v-btn>
      <v-col cols="6">
        <v-toolbar-title>Discloth</v-toolbar-title>
      </v-col>
      </v-row>
    </v-app-bar>

    <v-navigation-drawer
      v-model="drawer"
      absolute
      temporary
    >
      <v-list-item>
        <v-list-item-avatar>
          <v-img src="../assets/party_parrot.gif"></v-img>
        </v-list-item-avatar>

        <v-list-item-content>
          <v-list-item-title>DODO</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list dense>
        <v-list-item
          v-for="item in items"
          :key="item.title"
          link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </div>
</template>
<script>
  export default {
    data () {
      return {
        drawer: null,
        items: [
          { title: 'Settings', icon: 'mdi-account-edit' },
          { title: 'Logout', icon: 'mdi-account-circle-outline' },
        ],
      }
    },
  }
</script>
