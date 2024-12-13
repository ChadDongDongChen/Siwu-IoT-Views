<template>
  <!-- <div class="bs-design-wrap" :class="`bs-text-${customTheme}`">
    <div class="content-box" :key="domkey"
      :style="{ 'text-align': config.customize.align, 'letter-spacing': config.customize.letterSpacing + 'px', 'font-family': config.customize.fontFamily, 'font-size': config.customize.fontSize + 'px', 'font-weight': +config.customize.fontWeight, 'background-image': `-webkit-linear-gradient(${config.customize.color})` }">
      {{ config.customize.title }}
    </div>
  </div> -->
  <div style="width: 100%; height: 100%" class="bs-design-wrap">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 150 150">
      <defs>
        <radialGradient id="渐变_22" cx="74.95" cy="74.95" r="74.95" gradientUnits="userSpaceOnUse">
          <stop offset="0" stop-color="#919191" />
          <stop offset="0.35" stop-color="#989898" stop-opacity="0.99" />
          <stop offset="0.62" stop-color="#adadad" stop-opacity="0.94" />
          <stop offset="0.87" stop-color="#d0d0d0" stop-opacity="0.86" />
          <stop offset="1" stop-color="#eaeaea" stop-opacity="0.8" />
        </radialGradient>
        <radialGradient id="渐变_31" cx="74.32" cy="75.31" r="43.76" gradientUnits="userSpaceOnUse">
          <stop offset="0" stop-color="#f4f4f4" stop-opacity="0" />
          <stop offset="0.38" stop-color="#f4f4f4" stop-opacity="0.01" />
          <stop offset="0.52" stop-color="#f3f3f3" stop-opacity="0.04" />
          <stop offset="0.62" stop-color="#f2f2f2" stop-opacity="0.09" />
          <stop offset="0.7" stop-color="#f1f1f1" stop-opacity="0.17" />
          <stop offset="0.76" stop-color="#efefef" stop-opacity="0.26" />
          <stop offset="0.82" stop-color="#ededed" stop-opacity="0.38" />
          <stop offset="0.88" stop-color="#ebebeb" stop-opacity="0.53" />
          <stop offset="0.93" stop-color="#e8e8e8" stop-opacity="0.69" />
          <stop offset="0.97" stop-color="#e4e4e4" stop-opacity="0.88" />
          <stop offset="1" stop-color="#e2e2e2" />
        </radialGradient>
      </defs>
      <g id="图层_3" data-name="图层 3">
        <circle class="cls-1" cx="74.95" cy="74.95" r="74.95" />
        <circle  :key="domkey" :class="'cls-2-' + config.customize.statusColor" cx="74.32" cy="75.31" r="53.38" />
        <circle class="cls-3" cx="74.32" cy="75.31" r="45.29" />
      </g>
    </svg>
  </div>
</template>
<script>
import commonMixins from 'data-room-ui/js/mixins/commonMixins'
import paramsMixins from 'data-room-ui/js/mixins/paramsMixins'
import linkageMixins from 'data-room-ui/js/mixins/linkageMixins'
export default {
  name: 'warning',
  components: {},
  mixins: [paramsMixins, commonMixins, linkageMixins],
  props: {
    // 卡片的属性
    config: {
      type: Object,
      default: () => ({})
    }
  },
  data() {
    return {
      domkey: 0,
      customClass: {}
    }
  },

  computed: {
  },
  mounted() {
    this.chartInit()
  },
  methods: {
    // 通过表达式计算得来的值
    getDataByExpression(config) {
      // 如果表达式是由其他组件的值构成的
      // eslint-disable-next-line no-new-func
      try {
        const result = new Function('dataset', 'computedDatas', this.config.expression)
        config.customize.statusColor = result(this.dataset, this.computedDatas)
      } catch (e) {

      }
      // 同时将计算得来的值保存到公共的数据存储的地方
      this.updateComputedDatas({ code: config.code, title: config.title, data: config.customize.title })
      // this.changeChartConfig(config)
      // }
    },
    // dataFormatting(config, data) {
    //   // 文本数据配置原则：选择数据集则以后端返回的数据为主，否则以设置面板中标题设置为准
    //   if (config.dataSource.businessKey && config.dataSource.source === 'dataset') {
    //     config.customize.title = data && data.data && data.data.length ? data.data[0][config.dataSource.metricField] : '暂无数据'
    //     config.option.data = data && data.data && data.data.length ? data.data : []
    //   }
    //   this.domkey += 1;
    //   return config
    // }
    dataFormatting(config, data) {
      // 文本数据配置原则：选择数据集则以后端返回的数据为主，否则以设置面板中标题设置为准
      if (config.dataSource.businessKey && config.dataSource.source === 'dataset') {
        if (data && data.data && data.data.length) {
          let resp = data.data[0][config.dataSource.metricField];
          config.option.data = data.data;
          if (config.dataHandler) {
            try {
              // 此处函数处理data
              eval(config.dataHandler)
            } catch (e) {
              console.info(e)
            }
          }
          config.customize.statusColor = (typeof resp === 'string') ? resp : JSON.stringify(resp);
          if (config.customize.statusColor === 'true') {
            config.customize.statusColor = "green"
          } else if (config.customize.statusColor === 'false') {
            config.customize.statusColor = "red"
          } else {
            config.customize.statusColor = "gray"
          }
        } else {
          config.customize.statusColor = 'gray';
          config.option.data = [];
        }
      } else {
        // 如果不是选择数据集的情况
        config.customize.statusColor = 'gray';
        config.option.data = [];
      }
      this.domkey += 1;
      return config;
    }

  }
}
</script>

<style lang="scss" scoped>
@import "../../assets/fonts/numberFont/stylesheet.css";

// .bs-design-wrap {
//   width: 100%;
//   display: flex;
//   align-items: center;
//   justify-content: center;
// }

// .content-box {
//   width: 100%;
//   text-align: center;
//   /* 将背景设为渐变 */
//   /*background-image: -webkit-linear-gradient(left, #6294F7, #C85D14);*/
//   /* 规定背景绘制区域 */
//   -webkit-background-clip: text;
//   /* 将文字隐藏 */
//   -webkit-text-fill-color: transparent;
// }
.bs-design-wrap {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: transparent;
  border-radius: 4px;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  display: flex;
  align-items: center;
}

.cls-1 {
  stroke: #848484;
  fill: url(#渐变_22);
}

.cls-1,
.cls-2 {
  stroke-miterlimit: 10;
  stroke-width: 0.5px;
}

.cls-2-green {
  fill: #31c66c;
  /* 绿色 */
  stroke: #245b37;
  /* 深绿色 */
}

.cls-2-red {
  fill: #e74c3c;
  /* 红色 */
  stroke: #c0392b;
  /* 深红色 */
}

.cls-2-yellow {
  fill: #f39c12;
  /* 黄色 */
  stroke: #e67e22;
  /* 橙黄色 */
}

.cls-2-gray {
  fill: #7f8c8d;
  /* 灰色 */
  stroke: #95a5a6;
  /* 浅灰色 */
}

.cls-2-blue {
  fill: #3498db;
  /* 蓝色 */
  stroke: #2980b9;
  /* 深蓝色 */
}

.cls-3 {
  opacity: 0.18;
  fill: url(#渐变_31);
}
</style>
