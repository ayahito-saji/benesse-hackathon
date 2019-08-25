<template>
  <v-app>
    <v-app-bar app color="blue" dark>
      <v-toolbar-title>職業ロードマップ</v-toolbar-title>
      <div class="flex-grow-1"></div>
      <v-toolbar-items>
        <v-btn text @click="$router.push('/')">
          <v-icon>search</v-icon>
          検索
        </v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-content>
      <router-view/>
    </v-content>
  </v-app>
</template>
