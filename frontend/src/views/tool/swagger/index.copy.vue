<template>
  <div class="container">
    <!-- 控制按钮 -->
    <div class="controls">
      <button @click="zoomIn">放大</button>
      <button @click="zoomOut">缩小</button>
    </div>

    <!-- 画布区域 -->
    <div
      class="canvas"
      :style="canvasStyle"
      @mousedown="onMouseDown"
      @mousemove="onMouseMove"
      @mouseup="onMouseUp"
      @mouseleave="onMouseUp"
      @wheel="onWheel"
    >
      <!-- 画布内容 -->
      <div class="content">
        <h1>Heading</h1>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua.
        </p>
        <div class="icon">package</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'DragAndZoomCanvas',
  data() {
    return {
      scale: 1, // 缩放比例
      translateX: 0, // 水平位移
      translateY: 0, // 垂直位移
      isDragging: false, // 是否正在拖拽
      startX: 0, // 拖拽起始 X 坐标
      startY: 0 // 拖拽起始 Y 坐标
    };
  },
  computed: {
    // 画布样式
    canvasStyle() {
      return {
        transform: `scale(${this.scale}) translate(${this.translateX}px, ${this.translateY}px)`,
        transformOrigin: '0 0'
      };
    }
  },
  methods: {
    // 放大
    zoomIn() {
      this.scale += 0.1;
    },
    // 缩小
    zoomOut() {
      if (this.scale > 0.1) {
        this.scale -= 0.1;
      }
    },
    // 鼠标按下
    onMouseDown(event) {
      this.isDragging = true;
      this.startX = event.clientX - this.translateX;
      this.startY = event.clientY - this.translateY;
    },
    // 鼠标移动
    onMouseMove(event) {
      if (this.isDragging) {
        this.translateX = event.clientX - this.startX;
        this.translateY = event.clientY - this.startY;
      }
    },
    // 鼠标松开
    onMouseUp() {
      this.isDragging = false;
    },
    // 鼠标滚轮事件
    onWheel(event) {
      // 判断是否按下了 Ctrl 键
      if (event.ctrlKey) {
        event.preventDefault(); // 阻止默认行为
        const delta = event.deltaY < 0 ? 0.1 : -0.1; // 根据滚轮方向调整缩放比例
        this.scale += delta;

        // 限制缩放范围
        if (this.scale < 0.1) {
          this.scale = 0.1;
        } else if (this.scale > 5) {
          this.scale = 5;
        }
      }
    }
  }
};
</script>

<style scoped>
.container {
  width: 100%;
  height: 100vh;
  overflow: hidden;
  position: relative;
}

.controls {
  position: fixed;
  top: 20px;
  right: 20px;
  z-index: 1000;
}

button {
  margin: 5px;
  padding: 10px 20px;
  background-color: #42b983;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background-color: #3aa876;
}

.canvas {
  position: absolute;
  top: 50%;
  left: 50%;
  cursor: grab;
}

.content {
  width: 300px;
  padding: 20px;
  background-color: white;
  border: 1px solid #ccc;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
  font-size: 24px;
  margin-bottom: 10px;
}

p {
  font-size: 14px;
  color: #666;
}

.icon {
  width: 50px;
  height: 50px;
  background-color: #007bff;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-top: 20px;
  border-radius: 5px;
}
</style>