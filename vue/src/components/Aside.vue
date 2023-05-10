<template>
  <div style="background-color: #303032">
      <el-menu
        style="width:150px;min-height:calc(100vh - 50px);font-weight: bolder"
        text-color="#fff"
        background-color="#303032"
        active-text-color="#ff2f2f"
        :default-active="path"
        router
        class="el-menu-vertical-demo">
<!--        <el-sub-menu index="1">-->
<!--            <template #title>系统管理</template>-->
<!--          </el-sub-menu>-->

        <el-menu-item index="/man/user">
          <span style="font-size: 16px">用户信息</span>
        </el-menu-item>
        <el-menu-item index="/man/brandman">
          <span style="font-size: 16px">品牌信息</span>
        </el-menu-item>
        <el-menu-item index="/man/carman">
          <span style="font-size: 16px">车型信息</span>
        </el-menu-item>
        <el-menu-item index="/man/carleaseman">
          <span style="font-size: 16px">租赁信息</span>
        </el-menu-item>
        <el-menu-item index="/man/orderman">
          <span style="font-size: 16px">订单管理</span>
        </el-menu-item>
        <el-menu-item index="/man/carblogman">
          <span style="font-size: 16px">汽车资讯</span>
        </el-menu-item>
        <el-menu-item index="/man/carstoreman">
          <span style="font-size: 16px">门店信息</span>
        </el-menu-item>
        <el-menu-item index="/man/refitbrandman">
          <span style="font-size: 16px">改装品牌</span>
        </el-menu-item>
        <el-menu-item index="/man/refitman">
          <span style="font-size: 16px">改件信息</span>
        </el-menu-item>
        <el-menu-item index="/man/refitcaseman">
          <span style="font-size: 16px">改装文章</span>
        </el-menu-item>


      </el-menu>
  </div>
</template>

<script>
export default {
  name:"Aside",
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

<style>

</style>