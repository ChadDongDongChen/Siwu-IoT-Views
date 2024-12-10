<template>
  <div class="bs-setting-wrap">
    <el-form ref="form" :model="config" label-width="90px" label-position="left" class="setting-body bs-el-form">
      <el-form :model="config.customize" label-position="left" class="setting-body bs-el-form" label-width="90px">
        <SettingTitle>标题</SettingTitle>
        <el-form-item label="装饰名称" class="lc-field-body">
          <el-input v-model="config.title" clearable />
        </el-form-item>
        <SettingTitle>位置</SettingTitle>
        <div class="lc-field-body">
          <PosWhSetting :config="config" />
        </div>
        <SettingTitle>旋转</SettingTitle>
        <div class="lc-field-body">
          <RotateSetting :config="config" />
        </div>
        <SettingTitle>基础</SettingTitle>
        <div class="lc-field-body">
          <el-form-item label="状态颜色">
            <el-select v-model="config.customize.statusColor" placeholder="请选择状态颜色">
              <el-option v-for="option in statusColorOptions" :key="option.value" :label="option.label"
                :value="option.value"></el-option>
            </el-select>
          </el-form-item>
        </div>
      </el-form>
    </el-form>
  </div>
</template>
<script>
import ColorPicker from 'data-room-ui/ColorPicker/index.vue'
import PosWhSetting from 'data-room-ui/BigScreenDesign/RightSetting/PosWhSetting.vue'
import RotateSetting from 'data-room-ui/BigScreenDesign/RightSetting/RotateSetting.vue'
import SettingTitle from 'data-room-ui/SettingTitle/index.vue'
import { predefineColors } from "data-room-ui/js/utils/colorList";
export default {
  name: 'LightSetting',
  components: {
    ColorPicker,
    PosWhSetting,
    RotateSetting,
    SettingTitle
  },
  data() {
    return {
      //状态颜色
      statusColorOptions: [
        { label: '绿色', value: 'green' },
        { label: '红色', value: 'red' },
        { label: '黄色', value: 'yellow' },
        { label: '蓝色', value: 'blue' },
        { label: '灰色', value: 'gray' },
      ],
      // 预设主题色
      predefineThemeColors: predefineColors
    }
  },
  computed: {
    config: {
      get() {
        return this.$store.state.bigScreen.activeItemConfig
      },
      set(val) {
        this.$store.state.bigScreen.activeItemConfig = val
      }
    }
  },
  watch: {},
  mounted() {
  },
  methods: {
    updateState(e) {
      if (e === '') {
        this.isActive = false;
        this.config.customize.flowDirection = '';
      } else {
        this.isActive = true;
        this.config.customize.flowDirection = 'L';
      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import "../../assets/style/borderAndDecoraSetting.scss";

.lc-field-body {
  padding: 12px 16px;
}
</style>
