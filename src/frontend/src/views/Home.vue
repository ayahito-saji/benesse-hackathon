<template>
<v-container>
  <v-form>
    <v-container>
      <v-row>
        <v-col cols="12" sm="6" md="3" class="mx-auto">
          <v-text-field label="職業" outlined v-model="searchText"></v-text-field>
        </v-col>
      </v-row>
    </v-container>
  </v-form>
  <v-card max-width="344" class="mx-auto" v-for="job in filteredJobs" style="margin-bottom: 16px;">
    <v-card-title>{{ job.title }}</v-card-title>
    <v-card-text>
      <div><span class="red--text">文系{{ job.bunkei }}%</span><span class="blue--text"> 理系{{ job.rikei }}%</span></div>
      <!-- <img :src="`/image/${job.bunri}`" class="grey lighten-2" max-width="30" max-height="300"/> -->
    </v-card-text>


    <v-card-actions>
      <v-btn text>詳しく</v-btn>
      <v-btn text>ロードマップ</v-btn>
    </v-card-actions>
  </v-card>
</v-container>
</template>

<script>
  export default {
    data: function () {
      return {
        jobs: [
          {
            title: "弁護士",
            description: "文系80% 理系:20%",
            bunkei: "80",
            rikei: "20",
          },
          {
            title: "教師",
            description: "文系50% 理系:50%",
            bunkei: "50",
            rikei: "50",
          },
          {
            title: "パティシエ",
            description: "文系50% 理系:50%",
            bunkei: "50",
            rikei: "50",
          },
          {
            title: "エンジニア",
            description: "文系20% 理系:80%",
            bunkei: "20",
            rikei: "80",
          }
        ],
        searchText: ""
      }
    },
    computed: {
      filteredJobs: function () { return this.jobs.filter( (job) => { return job.title.indexOf(this.searchText) != -1 }) }
    }
  }
</script>