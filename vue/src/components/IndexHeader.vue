0<template>
  <div>

    <el-menu
        :default-active="path"
        class="el-menu-demo"
        mode="horizontal"
        router
        background-color="#343536"
        text-color="#fff"
        active-text-color="#ff2f2f"
        @select="handleSelect"
    >

      <div style="width:350px;padding-left:60px;padding-top:4px;font-weight:bold;color:#343536;font-size:20px">
        <img src="../assets/img/Sporty.png" width="180" height="50">
      </div>
      <el-menu-item index="/index"><span class="header_text">首页</span></el-menu-item>
      <el-menu-item index="/refitcase"><span  class="header_text">改装案例</span></el-menu-item>
      <el-menu-item index="/refitculture"><span  class="header_text">改装文化</span></el-menu-item>
      <el-menu-item index="/refitsell"><span  class="header_text">改件购买</span></el-menu-item>
      <el-menu-item index="/carnews"><span  class="header_text">汽车资讯</span></el-menu-item>
      <el-menu-item index="/brandsearch"><span  class="header_text">汽车查询</span></el-menu-item>
      <el-sub-menu index="2">
        <template #title><span  class="header_text">汽车周边</span></template>
        <el-menu-item index="2-1">WRC</el-menu-item>
        <el-menu-item index="2-2">WTCR</el-menu-item>
        <el-menu-item index="2-3">F1</el-menu-item>
        <el-menu-item index="2-4">FIA-GT</el-menu-item>
        <el-sub-menu index="2-4">
          <template #title>竞速游戏</template>
          <el-menu-item index="2-4-1">Forza Horizon 5</el-menu-item>
          <el-menu-item index="2-4-2">Need For Speed™:Heat</el-menu-item>
          <el-menu-item index="2-4-3">DiRT Rally 2.0</el-menu-item>
        </el-sub-menu>
      </el-sub-menu>
      <div id="ifLogin" style="width:100px;padding-left:250px;padding-top:20px;">
        <el-dropdown>
          <span class="el-dropdown-link">
            <div style="text-align: center;width: 100px;height:100%;cursor: pointer;color: #fff;font-size: 18px">
              个人管理
            </div>
            <el-icon class="el-icon--right">
              <arrow-down />
            </el-icon>
          </span>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="$router.push('/userperson')">个人信息</el-dropdown-item>
              <el-dropdown-item @click="logout">退出登录</el-dropdown-item>
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </div>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: "IndexHeader",
  data(){
    return{
      path:this.$route.path,
      loginName:'未登录'
    }
  },
  created() {
    console.log(this.$route.path)
  },
  methods:{
    logout(){
      this.$router.push('/userlogin')
      sessionStorage.clear()
    },
    getLoginName(){
      if(sessionStorage.getItem("user")){

        const usermassage = sessionStorage.getItem("user")
        this.loginName = JSON.parse(usermassage).name
      }else {

      }

    }
  }
}
</script>

<style scoped>
  .header_text{
    /*font-weight: bolder;*/
    font-size: 20px
  }
</style>