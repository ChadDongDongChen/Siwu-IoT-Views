<template>
  <div style="width: 100%; height: 100%" class="bs-design-wrap">
    <!-- 添加背景色 -->
    <div class="svg-box" :style="{
      backgroundColor: colorWithOpacity,
      paddingLeft: paddingValue,
      paddingRight: paddingValue,
      borderRadius: borderRadiusValue
    }">
      <svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none meet" version="1.1" width="100%" height="100%">
        <!-- 使用 Vue 变量动态设置属性 -->
        <g fill="none" :stroke="config.customize.decorationColor1" :stroke-width="config.customize.lineWidth"
          :opacity="config.customize.opacity">
          <path :class="[lineTypeClass, lineAnimationClass]" class="reverse-water-run"
            :d="'M0 ' + (config.h / 2) + ' l' + config.w + ' 0'" />
        </g>
      </svg>
    </div>
  </div>
</template>

<script>
import { refreshComponentMixin } from 'data-room-ui/js/mixins/refreshComponent'
export default {
  name: 'HorizontalLine2',
  mixins: [refreshComponentMixin],
  props: {
    config: {
      type: Object,
      default: () => ({}),
      required: true
    }
  },
  data() {
    return {

    }
  },
  computed: {
    // 动态设置内边距
    paddingValue() {
      return `${this.config.h / 2}px`;
    },
    // 动态设置倒圆角
    borderRadiusValue() {
      return `${this.config.h / 2}px`;
    },
    // 提取原始 rgba 颜色中的 rgba 值（格式：rgba(r, g, b, a)）
    colorWithOpacity() {
      const { decorationColor1 } = this.config.customize;
      const rgbaMatch = decorationColor1.match(/rgba?\((\d+), (\d+), (\d+), (\d*(?:\.\d+)?)\)/);
      if (rgbaMatch) {
        return `rgba(${rgbaMatch[1]}, ${rgbaMatch[2]}, ${rgbaMatch[3]}, 0.2)`;
      }
      return decorationColor1;
    },
    color() {
      return this.config.customize.decorationColor1 ? this.config.customize.decorationColor1 : null
    },
    // 动态返回线条的动画类（根据流动方向）
    lineAnimationClass() {
      const flowDirection = this.config.customize.flowDirection;
      switch (flowDirection) {
        case 'R':
          return 'reverse-water-run-R';
        case 'L':
          return 'reverse-water-run-L';
        default:
          return '';
      }
    },

    // 动态返回线条的类型类（点线、虚线、混合线等）
    lineTypeClass() {
      const lineType = this.config.customize.lineType;
      switch (lineType) {
        case 'dotted':
          return 'reverse-water-run-dotted';
        case 'dashed':
          return 'reverse-water-run-dashed';
        case 'blend':
          return 'reverse-water-run-blend';
        default:
          return '';
      }
    },
  },
  mounted() {
  },
  methods: {}
}
</script>

<style lang="scss" scoped>
.bs-design-wrap {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: transparent;
  border-radius: 100px;
  border-radius: 4px;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  display: flex;
  align-items: center;
}

.svg-box {
  height: 100%;
  width: 100%;
}

svg {
  display: block;
  /* 使SVG成为块级元素 */
  max-width: 100%;
  max-height: 100%;
}

/* 定义SVG路径动画 */
@keyframes dashSmooth-L {
  0% {
    stroke-dashoffset: 1000;
  }

  100% {
    stroke-dashoffset: 0;
  }
}

@keyframes dashSmooth-R {
  0% {
    stroke-dashoffset: 0;
  }

  100% {
    stroke-dashoffset: 1000;
  }
}

/* 通用的动画类 */
.reverse-water-run-L {
  stroke-dashoffset: 1000;
  animation: dashSmooth-L 20s linear infinite;
}

.reverse-water-run-R {
  stroke-dashoffset: 1000;
  animation: dashSmooth-R 20s linear infinite;
}

/* 针对不同的虚线类型，动态设置 stroke-dasharray */
//点线
.reverse-water-run-dotted {
  stroke-dasharray: 5 5;
}

//虚线
.reverse-water-run-dashed {
  stroke-dasharray: 10 10;
}

//混合线
.reverse-water-run-blend {
  stroke-dasharray: 10 10 2 10;
}
</style>