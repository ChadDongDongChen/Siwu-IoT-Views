import { commonConfig } from "../../js/config";

export const settingConfig = {
  padding: [30, 30, 30, 60],
  legend: false,
  isGroup: true,
  data: [],
  // 设置面板属性的显隐
  displayOption: {
    dataAllocation: {
      // 是否存在数据配置
      enable: false,
    },
  },
};
const customConfig = {
  type: "horizontalLine2",
  root: {
    version: "2023071001",
    contribution: false,
    // 绕x轴旋转角度
    rotateX: 0,
    // 绕y轴旋转角度
    rotateY: 0,
    // 绕z轴旋转角度
    rotateZ: 0,
    // 透视距离
    perspective: 0,
    skewX: 0,
    skewY: 0,
  },
  customize: {
    decorationColor1: "rgba(18, 150, 219, 1)", //线条颜色
    lineWidth: 5, //线条宽度
    opacity: 1, //透明度
    lineType: "dashed",
    flowDirection: "L",
    animation: "waterRun",
    reverse: false,
    dur: 3,
    scanDur: 3,
    haloDur: 2,
  },
};
export const dataConfig = {
  ...commonConfig(customConfig),
};
