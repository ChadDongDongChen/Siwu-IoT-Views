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
          <el-form-item label="线条类型">
            <el-select v-model="config.customize.lineType" placeholder="请选择">
              <el-option v-for="item in lineTypeOptions" :key="item.value" :label="item.label" :value="item.value">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="线条颜色">
            <ColorPicker v-model="config.customize.decorationColor1" :predefine="predefineThemeColors" />
          </el-form-item>
          <el-form-item label="线条粗细">
            <el-input-number v-model="config.customize.lineWidth" class="bs-el-input-number" :min="1" :max="20"
              :step="1" />
          </el-form-item>
          <el-form-item label="透明度">
            <el-input-number v-model="config.customize.opacity" class="bs-el-input-number" :min="0.01" :max="1"
              :precision="2" :step="0.01" />
          </el-form-item>
          <el-form-item label="线条动画">
            <el-select v-model="config.customize.animation" placeholder="请选择" clearable @change="updateState">
              <el-option v-for="item in animationOptions" :key="item.value" :label="item.label" :value="item.value">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item label="流向" v-if="isActive">
            <el-radio v-model="config.customize.flowDirection" label="L">正向</el-radio>
            <el-radio v-model="config.customize.flowDirection" label="R">反向</el-radio>
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
  name: 'HorizontalLine2Setting',
  components: {
    ColorPicker,
    PosWhSetting,
    RotateSetting,
    SettingTitle
  },
  data() {
    return {
      //是否显示动画流向
      isActive: true,
      //动画类型
      animationOptions: [{
        value: 'waterRun',
        label: '水流'
      }],
      //线条类型
      lineTypeOptions: [{
        value: '',
        label: '实线'
      }, {
        value: 'dotted',
        label: '点线'
      }, {
        value: 'dashed',
        label: '虚线'
      }, {
        value: 'blend',
        label: '混合线'
      }],
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
