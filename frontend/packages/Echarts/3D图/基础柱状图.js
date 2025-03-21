// 配置版本号
const version = '2025031201'
// 标题
const title = '基础柱状图'
// 用于标识，唯一，和文件夹名称一致
const name = '基础柱状图'
// 右侧配置项
// 右侧配置项
const setting = [
  {
   label: '维度',
   // 设置组件类型， select / input / colorPicker
   type: 'select',
   // 字段
   field: 'xField',
   optionField: 'xField', // 对应options中的字段
   // 是否多选
   multiple: false,
   // 绑定的值
   value: '',
   // tab页。 data: 数据， custom: 自定义
   tabName: 'data'
 },
 {
   label: '指标',
   // 设置组件类型
   type: 'select',
   // 字段
   field: 'yField',
   // 对应options中的字段
   optionField: 'yField',
   // 是否多选
   multiple: false,
   value: '',
   tabName: 'data'
 },
 {
   label: '柱形颜色',
   type: 'colorPicker',
   field: 'color',
   optionField: 'color',
   value: '#007aff',
   tabName: 'custom',
   groupName: 'graph'
 },
 {
   label: 'x轴类型',
   type: 'input',
   field: 'xAxis_type',
   optionField: 'xAxis.type',
   value: 'category',
   tabName: 'custom',
   groupName: 'xAxis'
 },
 {
  label: '标签显示',
  type: 'switch',
  field: 'xAxis_show',
  optionField: 'xAxis.show',
  value: 0,
  active: 1,
  inactive: 0,
  tabName: 'custom',
  groupName: 'xAxis'
},
]


// 配置处理脚本
const optionHandler = ''

// 数据处理脚本
const dataHandler = ''

// 图表配置 new Line('domName', option)
const xData = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
const yData = [10, 52, 200, 334, 390, 330, 220]
// const maxData = [1500, 1500, 1500, 1500]
const option = {
  tooltip: {
    trigger: 'axis',
    axisPointer: {
      type: 'shadow'
    }
  },
  grid: {
    left: '3%',
    right: '4%',
    bottom: '3%',
    containLabel: true
  },
  xAxis: 
    [{
      type: 'category',
      data: xData,
      axisTick: {
        alignWithLabel: true
      },
      // 坐标轴刻度标签
      axisLabel: {
        show: true,

      }
    }]
  ,
  yAxis: [
    {
      type: 'value'
    }
  ],
  series: [
    {
      name: 'Direct',
      type: 'bar',
      barWidth: '60%',
      data: yData
    }
  ]
}
export default {
  version,
  title,
  name,
  option,
  setting,
  optionHandler,
  dataHandler
}
