<template>
  <div>
    <svg-icon icon-class="github" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'RuoYiGit',
  data() {
    return {
      url: 'https://gitee.com/jonehoo/Siwu-IoT-Views'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>