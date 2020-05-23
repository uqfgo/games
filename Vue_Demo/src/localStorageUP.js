const todos = 'todos'

export default {
  getItem () {
    return JSON.parse(window.localStorage.getItem(todos) || '[]')
  },

  setItem (val) {
    window.localStorage.setItem(todos, JSON.stringify(val))
  }
}
