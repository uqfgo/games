<template>
  <div>
    <ul class="list-group" >
      <li class="list-group-item" v-for='(item, index) in $store.state.ToDos' :key='index'>
        <label>
          <input type="checkbox" @click="checked(index)" v-model="item.flag"> &nbsp;{{ item.content }}
        </label>
        <button class='pull-right' @click='Del(index)'>删除</button>
      </li>
      <li class="list-group-item" v-show="!$store.state.ToDos.length">暂无</li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'contentList',
  methods: {
    Del: function (index) {
      // this.DelOneItem(index)
      if (confirm('确认删除')) {
        this.$store.dispatch('Del_One_Item', index)
      }
    },
    checked (index) {
      this.$store.dispatch('checked', index)
    }
  }
}
</script>

<style>

</style>
