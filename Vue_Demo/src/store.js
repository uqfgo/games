import Vue from 'vue'
import Vuex from 'vuex'

// 声明使用 Vuex
Vue.use(Vuex)

const state = {
  num: 1
}

const mutations = {
  // 增加
  Increase (state) {
    state.num++
  },
  // 减少
  Reduce (state) {
    if (state.num >= 2) {
      state.num--
    }
  }
}

const actions = {
  increase ({commit, state}) {
    commit('Increase')    
  }, 
  reduce ({commit, state}) {
    commit('Reduce')
  }
}

const getters = {
  // 不需要调用，只需要读取数据就行
  evenOrOdd (state) {
    return state.num % 2 === 0 ? '偶数' : '奇数'
  }
}

// 传出这个 new
export default new Vuex.Store({
  state, // 状态对象
  mutations, // 包含多个更新 state 函数的对象
  actions, // 包含多个对应事件回调函数的对象
  getters // 计算
})

