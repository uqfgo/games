<template>
  <div class='Div'>
    <topInput />
    <p></p>
    <contentList />
    <p></p>
    <floot />
  </div>
</template>

<script>
import topInput from './components/topInput'
import contentList from './components/contentList'
import floot from './components/floot'

export default {
  name: 'App',
  components: {
    topInput,
    contentList,
    floot
  },
  mounted () {
    // 调用获取状态方法dispatch
    this.$store.dispatch('getobjdata')
  }
}
</script>

<style>
  .Div {
    width: 40%;
    margin: auto;
    padding-top: 20px;
  }
</style>
