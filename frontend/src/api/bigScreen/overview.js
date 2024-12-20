
import request from '@/utils/request'
import { parseStrEmpty } from "@/utils/ruoyi";

// 查询用户列表
export function bigScreenCatalog() {
  return request({
    url: '/bigScreen/type/list/bigScreenCatalog',
    method: 'get'
  })
}
export function page(query) {
    return request({
      url: 'bigScreen/design/page',
      method: 'get',
      params:query
    })
  }
  