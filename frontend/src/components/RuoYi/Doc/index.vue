<template>
  <div>
    <svg-icon icon-class="question" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'RuoYiDoc',
  data() {
    return {
      url: 'https://sv.jinhuwl.top:5744/'
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>