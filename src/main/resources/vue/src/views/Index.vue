<template>

</template>

<script>
export default {
  name: "Index",
  data(){
    return{
      path:this.$route.path
    }
  },
  created() {
    console.log(this.$route.path)
  }
}
</script>

<style scoped>

</style>