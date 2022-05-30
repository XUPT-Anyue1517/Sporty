<template>
  <div>

    <el-menu
        :default-active="path"
        class="el-menu-demo"
        mode="horizontal"
        background-color="#343536"
        text-color="#fff"
        active-text-color="#ff2f2f"
        @select="handleSelect"
    >

      <div style="width:300px;padding-left:10px;padding-top:2px;font-weight:bold;color:#343536;font-size:20px">
        <img src="../assets/img/Sporty.png" width="180" height="50">
      </div>
      <el-menu-item index="/index"><span style="font-weight: bolder;font-size: 19px">首页</span></el-menu-item>
      <el-menu-item index="/culture"><span style="font-weight: bolder;font-size: 19px">Sporty文化</span></el-menu-item>
      <el-menu-item index="/news"><span style="font-weight: bolder;font-size: 19px">Sporty资讯</span></el-menu-item>
      <el-menu-item index="/sell"><span style="font-weight: bolder;font-size: 19px">Sporty销售</span></el-menu-item>
      <el-menu-item index="/wrc"><span style="font-weight: bolder;font-size: 19px">WRC</span></el-menu-item>
      <el-sub-menu index="2">
        <template #title>Workspace</template>
        <el-menu-item index="2-1">item one</el-menu-item>
        <el-menu-item index="2-2">item two</el-menu-item>
        <el-menu-item index="2-3">item three</el-menu-item>
        <el-sub-menu index="2-4">
          <template #title>item four</template>
          <el-menu-item index="2-4-1">item one</el-menu-item>
          <el-menu-item index="2-4-2">item two</el-menu-item>
          <el-menu-item index="2-4-3">item three</el-menu-item>
        </el-sub-menu>
      </el-sub-menu>
      <el-menu-item index="3" disabled>Info</el-menu-item>
      <el-menu-item index="4">Orders</el-menu-item>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: "IndexHeader"
}
</script>

<style scoped>

</style>