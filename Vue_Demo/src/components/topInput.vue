<template>
  <div>
    <input type="text" class="form-control" placeholder='请输入你的待办事项' v-model="Val" @keyup.13="add" />
  </div>
</template>

<script>
export default {
  name: 'topInput',
  data: function () {
    return {
      Val: ''
    }
  },
  methods: {
    add: function () {
      const {Val} = this
      const Obj = {
        content: Val,
        flag: false
      }
      // AddData(Obj)
      this.$store.dispatch('add_data', Obj)
      // this.$emit('AddData', Obj)
      this.Val = ''
    }
  }
}
</script>

<style>

</style>
