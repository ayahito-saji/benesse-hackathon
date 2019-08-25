<template>
  <div style="width: 100%;height: 100%;">
    <div style="width: 100%;height: 100%;" ref="network"></div>
    <v-btn style="position: absolute;bottom: 32px;right: 32px;" color="primary">「エンジニア」を詳しく</v-btn>
  </div>
</template>
<script>
  export default {
    data () {
      return {
        data: [
          {id: 1, label: 'エンジニア', shape: 'circle', value: 20, scaling: { label: { enabled: true} }},
          {id: 2, label: '機械学習', shape: 'box'},
          {id: 3, label: 'プログラミング', shape: 'box'},
          {id: 4, label: '大学:行列(数学)', shape: 'box'},
          {id: 5, label: '高校:ベクトル(数学)', shape: 'box'},
          {id: 6, label: '高校:連立方程式(数学)', shape: 'box'},
          {id: 7, label: '中学:方程式と解(数学)', shape: 'box'},
          {id: 8, label: '小学:掛け算・割り算(数学)', shape: 'box'},
          {id: 9, label: '大学:微分積分(数学)', shape: 'box'},
          {id: 10,label: '高校:微分積分(数学)', shape: 'box'},
          {id: 11,label: '高校:三角関数(数学)', shape: 'box'},

          {id: 12,label: '論理的思考', shape: 'box'},
          {id: 13,label: '説明力(国語)', shape: 'box'},
          {id: 14,label: '発想力', shape: 'box'},

          {id: 15,label: '長文読解力(英語)', shape: 'box'},
          {id: 16,label: 'スピーキング(英語)', shape: 'box'},
          {id: 17,label: '単語(英語)', shape: 'box'},
        ],
        options: [
          {from: 2, to: 1, arrows: 'to'},
          {from: 3, to: 1, arrows: 'to'},
          {from: 4, to: 2, arrows: 'to'},
          {from: 5, to: 4, arrows: 'to'},
          {from: 6, to: 4, arrows: 'to'},
          {from: 7, to: 6, arrows: 'to'},
          {from: 8, to: 7, arrows: 'to'},
          {from: 9, to: 2, arrows: 'to'},
          {from: 10, to: 9, arrows: 'to'},
          {from: 11, to: 10, arrows: 'to'},
          {from: 12, to: 3, arrows: 'to'},
          {from: 13, to: 1, arrows: 'to'},
          {from: 14, to: 1, arrows: 'to'},
          {from: 15, to: 1, arrows: 'to'},
          {from: 16, to: 1, arrows: 'to'},
          {from: 17, to: 15, arrows: 'to'},
          {from: 17, to: 16, arrows: 'to'},
        ]
      }
    },
    mounted() {
      var container = this.$refs.network;
      var nodes = new vis.DataSet(this.data);
      var edges = new vis.DataSet(this.options);
      var data = {
        nodes: nodes,
        edges: edges
      };
      var options = {
      };
      var network = new vis.Network(container, data, options);
    }
  }
</script>
