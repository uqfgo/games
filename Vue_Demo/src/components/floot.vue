<template>
  <div class="panel panel-default">
    <div class="panel-body">
      <div class="checkbox">
        <label>
          <input type="checkbox" v-model='isAllComplete'> 全选 已选中数量：{{completeCount}}
        </label>
        <button class='pull-right' v-show='completeCount' @click='DelChecked'>删除选中项目</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'floot',
  methods: {
    DelChecked: function () {
      this.$store.dispatch('delChecked')
    }
  },
  computed: {
    totalCount: {
      get () {
        return this.$store.getters.totalCount
      },
      set (val) {}
    },
    completeCount: {
      get () {
        return this.$store.getters.completeCount
      },
      set (val) {}
    },
    isAllComplete: {
      get () {
        return this.$store.getters.isAllSelect
      },
      set (val) {
        this.$store.dispatch('selectAllTodos', val)
      }
    }
  }
}
</script>

<style>

</style>
