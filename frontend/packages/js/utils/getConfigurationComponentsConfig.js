/*
 * @description: 得到装饰组件配置
 */

import Icon from "data-room-ui/assets/images/bigScreenIcon/export";

export default function getComponentConfig(type, classNameType) {
  const className =
    "com.gccloud.dataroom.core.module.chart.components.ScreenConfigurationChart";
  switch (type) {
   
    case "horizontalLine2":
      return {
        name: "水平线2",
        title: "水平线2",
        // icon: Icon.getNameList()[36],
        img: require("data-room-ui/Configuration/images/水平线.png"),
        component: null,
        className,
        w: 300,
        h: 20,
        x: 0,
        y: 0,
        type,
      };
    case "verticalLine2":
      return {
        name: "垂直线2",
        title: "垂直线2",
        // icon: Icon.getNameList()[36],
        img: require("data-room-ui/Configuration/images/垂直线.png"),
        component: null,
        className,
        w: 20,
        h: 300,
        x: 0,
        y: 0,
        type,
      };
    case "warning":
      return {
        name: "告警灯",
        title: "告警灯",
        icon: Icon.getNameList()[37],
        className:
          "com.gccloud.dataroom.core.module.chart.components.ScreenTextChart",
          w: 200,
          h: 200,
          x: 0,
          y: 0,
        type,
        dataHandler: {}, // 数据自定义处理js脚本
      };
    default:
      return {};
  }
}
