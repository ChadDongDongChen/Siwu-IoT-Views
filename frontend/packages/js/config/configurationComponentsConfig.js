// import _ from 'lodash'
import cloneDeep from "lodash/cloneDeep";
import getComponentConfig from "data-room-ui/js/utils/getConfigurationComponentsConfig";
// 批量引入配置文件
import { setModules, dataModules } from "data-room-ui/js/utils/configImport";

const typeLIst = [
  // "decoration1",
  // "configuration1",
  // "configuration2",
  "horizontalLine2",
  "verticalLine2",
  "light",
];
let basicConfigList = [];
basicConfigList = typeLIst.map((type) => {
  return getComponentConfig(type, "ScreenConfiguration"); // 组态组件的className保持一致
});
basicConfigList = basicConfigList.map((item) => {
  return basicComponentsConfig(item);
});

// 生成基本配置
export function basicComponentsConfig(item) {
  // let type = `lcdp${upperFirst(item.type)}`
  return {
    ...item,
    option: cloneDeep(setModules[item.type]),
    ...cloneDeep(dataModules[item.type]),
  };
}

export default basicConfigList;
