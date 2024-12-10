/*
 * @description: 得到装饰组件配置
 */

import Icon from "data-room-ui/assets/images/bigScreenIcon/export";

export default function getComponentConfig(type, classNameType) {
  const className =
    "com.gccloud.dataroom.core.module.chart.components.ScreenConfigurationChart";
  switch (type) {
    case "decoration1":
      return {
        name: "发行对象",
        title: "发行对象",
        img: require("data-room-ui/Decorations/images/01.png"),
        component: null,
        className,
        w: 350,
        h: 50,
        x: 0,
        y: 0,
        type,
      };
    case "configuration1":
      return {
        name: "过滤器",
        title: "过滤器",
        img: require("data-room-ui/Configuration/images/11.png"),
        component: null,
        className,
        w: 150,
        h: 250,
        x: 0,
        y: 0,
        type,
      };
    case "configuration2":
      return {
        name: "电机",
        title: "电机",
        img: require("data-room-ui/Configuration/images/12.png"),
        component: null,
        className,
        w: 300,
        h: 125,
        x: 0,
        y: 0,
        type,
      };
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
    case "light":
      return {
        name: "状态灯",
        title: "状态灯",
        icon: Icon.getNameList()[37],
        component: null,
        className,
        w: 200,
        h: 200,
        x: 0,
        y: 0,
        type,
      };
    default:
      return {};
  }
}
