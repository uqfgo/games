// 用来通知 mutation 更新函数更新的接收对象

import {GetItem, ADD_DATA, DEL_ONE_ITEM, DEL_CHECKED, ALL_BTN, CHECKED, SELECT_ALL_TODOS} from './mutation-types'

export default {
  // 拿到缓存值，异步操作
  getobjdata ({commit}, state) {
    commit(GetItem, state)
  },
  // 添加数据
  add_data ({commit}, data) {
    commit(ADD_DATA, {data})
  },
  // 删除数据
  Del_One_Item ({commit}, index) {
    commit(DEL_ONE_ITEM, index)
  },
  // 删除勾选的按钮
  delChecked ({commit}) {
    commit(DEL_CHECKED)
  },
  // 全选按钮
  AllBtn ({commit}, val) {
    commit(ALL_BTN, {val})
  },
  // 单选按钮
  checked ({commit}, index, isAllComplete) {
    commit(CHECKED, index, isAllComplete)
  },
  // 更新状态
  selectAllTodos ({commit}, val) {
    commit(SELECT_ALL_TODOS, {val})
  }
}
