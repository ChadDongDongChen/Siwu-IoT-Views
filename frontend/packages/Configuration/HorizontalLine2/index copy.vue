<template>
  <div style="width: 100%; height: 100%" class="bs-design-wrap">
    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="10" :key="updateKey"
      :style="{ animation: 'dash 5s linear infinite' }">
      <line :x1="0" :y1="5" :x2="config.w" :y2="5" :stroke="config.customize.decorationColor1"
        :stroke-width="config.customize.lineWidth" stroke-dasharray="10 10 2 10" :opacity="config.customize.opacity" />
    </svg>
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
    color() {
      return this.config.customize.decorationColor1 ? this.config.customize.decorationColor1 : null
    }
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
  border-radius: 4px;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  display: flex;
  align-items: center;
}

@keyframes dash {
  0% {
    stroke-dashoffset: 0;
  }

  100% {
    stroke-dashoffset: -1000;
  }
}

/* 滚动条样式 */
::v-deep ::-webkit-scrollbar {
  width: 4px;
  border-radius: 4px;
  height: 4px;
}

::v-deep ::-webkit-scrollbar-thumb {
  background: #dddddd !important;
  border-radius: 10px;
}
</style>