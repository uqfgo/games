// 计算对象

export default {
  // 总数量
  totalCount (state) {
    return state.ToDos.length
  },
  // 完成的数量
  completeCount (state) {
    // return state.ToDos.reduce((preTotal, todo) => preTotal + (todo.flag ? 1 : 0), 0)
    let num = 0
    Array.prototype.forEach.call(state.ToDos, function (item, index) {
      num = num + ((item.flag ? 1 : 0) - 0)
    })
    return num
  },
  // 判断是否全部选中
  isAllSelect (state, getters) {
    return getters.totalCount === getters.completeCount && state.ToDos.length > 0
  }
}
