<template>
  <div style="padding-left: 8px;padding-right: 8px;">
    <el-collapse v-model="activeName" accordion @change="handleOpen">
      <el-collapse-item :title="item.name" :name="index" class="drag-container" v-for="(item, index) in options"
        :key="index">
        <el-scrollbar>
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
      activeName: '1',
      loading: false,
      options: [],
      code: '',
      focus: -1,
      current: 1,
      searchKey: '',
      imgExtends: ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'svg', 'webp', 'ico'],
    };
  },
  mounted() {
    this.init();

  },
  methods: {
    async handleOpen(e) {
      let cateName = this.options[parseInt(e)];
      let itemList = await this.getItemList(cateName.code);
      this.options[parseInt(e)].list = itemList;
    },
    init() {
      this.code = '';
      this.focus = -1;
      this.getCatalogList();
    },
    getItemList(model) {
      this.loading = true;
      return this.$dataRoomAxios.get('/bigScreen/file', {
        module: model,  // 这里可以传递特定模块的过滤条件
        current: 1,
        size: 9999,  // 每次请求的条数
        extensionList: this.imgExtends,
        searchKey: this.searchKey,
      }).then((data) => {
        this.totalCount = data.totalCount;
        return data.list

      }).finally(() => {
        this.loading = false;
      });
    },
    // 获取目录的列表
    getCatalogList() {
      this.$dataRoomAxios.get('/bigScreen/type/list/resourceCatalog')
        .then((data) => {
          this.options = data
            .filter(r => r.name.startsWith('PID')) // 过滤出 name 以 "PID" 开头的对象
            .map(r => {
              r.list = []; // 为每个符合条件的对象添加一个空数组 list
              return r; // 返回处理后的对象
            });
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
