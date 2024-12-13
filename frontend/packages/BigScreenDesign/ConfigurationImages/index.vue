<template>
  <div style="padding-left: 8px;padding-right: 8px;">
    <el-collapse>
      <el-collapse-item :title="item.name" :name="index" class="drag-container" v-for="(item, index) in categorizedData"
        :key="index">
        <el-scrollbar>
          <!-- 为每个卡片添加拖拽事件 -->
          <div v-for="(screen, i) in item.list" :key="i" class="card" draggable="true"
            @dragstart="handleDragStart($event, screen)">
            <div class="card-name">{{ removeExtension(screen.originalName) }}</div>
            <div class="card-image">
              <img :src="getCoverPicture(screen.url)" alt="">
            </div>
          </div>
        </el-scrollbar>
      </el-collapse-item>
    </el-collapse>
  </div>
</template>

<script>
import cloneDeep from 'lodash/cloneDeep'
import { getFileUrl } from 'data-room-ui/js/utils/file'
import { dataConfig, settingConfig } from 'data-room-ui/BasicComponents/Picture/settingConfig'
import { customSerialize } from 'data-room-ui/js/utils/jsonSerialize.js'

export default {
  data() {
    return {
      loading: false,
      options: [],
      code: '',
      focus: -1,
      current: 1,
      searchKey: '',
      imgExtends: ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'svg', 'webp', 'ico'],
      configurationOption: [{
        name: '泵',
        code: "resourceCatalog_qbDHUfhAC9",
      }, {
        name: '电源',
        code: "resourceCatalog_AxnbaLN0Kh",
      }, {
        name: '阀门',
        code: 'resourceCatalog_YdLjLI50Hn',
      }, {
        name: '废水处理',
        code: 'resourceCatalog_WlTTy5H7bz',
      }, {
        name: '锅炉',
        code: 'resourceCatalog_tm6ExLTove',
      }, {
        name: '加热器',
        code: 'resourceCatalog_PZQQV8hxCL',
      }, {
        name: '建筑',
        code: 'resourceCatalog_Ci7foBhlSE',
      }, {
        name: '动态图标',
        code: 'resourceCatalog_IyICBu1CNE',
      }],
      // 分类后的数据
      categorizedData: [],
    };
  },
  mounted() {
    this.init();
  },
  methods: {
    init() {
      this.code = '';
      this.focus = -1;
      this.getDataList();
      this.getCatalogList();
    },
    // 资源列表
    getDataList() {
      this.loading = true;
      this.$dataRoomAxios.get('/bigScreen/file', {
        module: "",  // 这里可以传递特定模块的过滤条件
        current: 1,
        size: 9999,  // 每次请求的条数
        extensionList: this.imgExtends,
        searchKey: this.searchKey,
      }).then((data) => {
        this.totalCount = data.totalCount;
        // 分类数据
        this.categorizedData = this.classifyData(data.list);
        console.log('资源列表分类后: ', this.categorizedData);
      }).finally(() => {
        this.loading = false;
      });
    },
    classifyData(list) {
      return this.configurationOption.map(option => {
        return {
          name: option.name,
          code: option.code,
          list: list.filter(item => item.module === option.code)  // 根据 code 分类
        };
      });
    },
    // 获取目录的列表
    getCatalogList() {
      this.$dataRoomAxios.get('/bigScreen/type/list/resourceCatalog')
        .then((data) => {
          this.options = data;
          console.log('获取目录的列表: ', data);
        })
        .catch(() => { });
    },
    /**
     * 获取文件访问地址，如果是相对路径则拼接上文件访问前缀地址
     * @param url
     * @returns {*}
     */
    getCoverPicture(url) {
      return getFileUrl(url);
    },
    // 使用正则表达式去除扩展名
    removeExtension(filename) {
      const match = filename.match(/^(.*?)(\.[^.]*?)$/);
      return match ? match[1] : filename; // 如果匹配成功，返回文件名部分
    },
    // 拖动开始事件处理
    handleDragStart(event, screen) {
      this.focus = cloneDeep(screen);
      /* 设置拖拽传输数据 */
      event.dataTransfer.setData(
        'dragComponent',
        customSerialize({
          title: this.focus.originalName,
          name: this.focus.originalName,
          icon: null,
          className: 'com.gccloud.dataroom.core.module.chart.components.ScreenPictureChart',
          w: 200,
          h: 200,
          x: 0,
          y: 0,
          type: 'picture',
          option: {
            ...cloneDeep(settingConfig)
          },
          setting: {},
          dataHandler: {},
          ...cloneDeep(dataConfig),
          customize: {
            url: this.focus.url,
            radius: 0,
            opacity: 100
          },
          offsetX: event.offsetX,
          offsetY: event.offsetY
        })
      )
    },
  }
};
</script>

<style scoped lang="scss">
.card {
  width: 144px;
  margin-top: 8px;
  cursor: move;
  /* 增加鼠标指针样式，提示用户可以拖拽 */
}

.card-name {
  background: #303640;
  font-size: 12px;
  padding: 4px 8px;
  text-align: left;
}

.card-image {
  height: 80px;
  padding: 8px 0;
  background: #232832;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card-image img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}

// 折叠面板
::v-deep .el-collapse {
  border: none;
  background-color: #151A26 !important;
}

::v-deep .el-collapse-item__wrap {
  border: none;
  background-color: #151A26 !important;
}

::v-deep .el-collapse-item__header {
  padding-left: 8px;
  color: #fff;
  border: 1px solid #151A26;
  background-color: #303640 !important; //面板背景色
}

::v-deep .el-collapse-item__header:hover {
  color: #1E90FF;
}

::v-deep .el-collapse-item__content {
  color: #fff;
  border: none;
  background-color: #151A26 !important;
}

::v-deep .el-scrollbar__view {
  height: auto !important;
}
</style>
