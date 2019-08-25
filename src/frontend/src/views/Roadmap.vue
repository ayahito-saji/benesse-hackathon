<template>
  <div style="width: 100%;height: 100%;" ref="network"></div>
</template>
<script>
  export default {
    data () {
      return {
        data: [
          {id: 1, label: 'エンジニア', value: 20, scaling: { label: { enabled: true} }},
          {id: 2, label: '機械学習'},
          {id: 3, label: 'プログラミング'},
          {id: 4, label: '大学:行列'},
          {id: 5, label: '高校:ベクトル'},
          {id: 6, label: '高校:連立方程式'},
          {id: 7, label: '中学:方程式と解'},
          {id: 8, label: '小学:掛け算・割り算'},
          {id: 9, label: '大学:微分積分'},
          {id: 10,label: '高校:微分積分'},
          {id: 11,label: '高校:三角関数'},
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
