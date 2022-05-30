<template>
  <div>
    <!-- 头部 -->
    <IndexHeader/>
    <!-- 主体 -->
    <div style="display:flex">
      <router-view style="flex:1"/>
    </div>
  </div>
</template>

<script>
import IndexHeader from "@/components/IndexHeader";
export default {
  name: "UserLayout",
  components: {IndexHeader}
}
</script>

<style scoped>

</style>