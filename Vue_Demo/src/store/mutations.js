// 更新对象

import {GetItem, ADD_DATA, DEL_ONE_ITEM, DEL_CHECKED, ALL_BTN, CHECKED, SELECT_ALL_TODOS} from './mutation-types'

export default {
  // 去缓存中拿值
  [GetItem] (state) {
    state.ToDos = JSON.parse(window.localStorage.getItem('todos') || '[]')
  },

  // 添加新值
  [ADD_DATA] (state, data) {
    // 拿值
    const ToDos = JSON.parse(window.localStorage.getItem('todos') || '[]')
    // 更新值
    ToDos.unshift(data.data)
    // 替换值
    state.ToDos = ToDos
    window.localStorage.setItem('todos', JSON.stringify(ToDos))
  },

  // 删除值
  [DEL_ONE_ITEM] (state, index) {
    // 拿值
    const ToDos = JSON.parse(window.localStorage.getItem('todos') || '[]')
    // 更新值
    ToDos.splice(index, 1)

    // 替换值
    state.ToDos = ToDos
    window.localStorage.setItem('todos', JSON.stringify(ToDos))
  },

  // 删除所有被勾选起来的值
  [DEL_CHECKED] (state) {
    state.ToDos = state.ToDos.filter(todo => !todo.flag)
    window.localStorage.setItem('todos', JSON.stringify(state.ToDos))
  },

  // 全选按钮
  [ALL_BTN] (state, val) {
    state.ToDos.forEach(function (item) {
      return (item.flag = val.val)
    })

    // 替换值
    window.localStorage.setItem('todos', JSON.stringify(state.ToDos))
  },

  // 单选按钮
  [CHECKED] (state, index, isAllComplete) {
    if (index >= 0) {
      state.ToDos[index].flag = !state.ToDos[index].flag
    } else {
      Array.prototype.forEach.call(state.ToDos, function (item) {
        item.flag = isAllComplete
      })
    }
    window.localStorage.setItem('todos', JSON.stringify(state.ToDos))
  },

  // 更新状态
  [SELECT_ALL_TODOS] (state, {val}) {
    state.ToDos.forEach(todo => {
      todo.flag = val
    })
    window.localStorage.setItem('todos', JSON.stringify(state.ToDos))
  }
}
