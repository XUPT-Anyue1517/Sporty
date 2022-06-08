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
      <el-menu-item index="/refitsearch"><span  class="header_text">改件查询</span></el-menu-item>
      <el-menu-item index="/carnews"><span  class="header_text">汽车资讯</span></el-menu-item>
      <el-menu-item index="/brandsearch"><span  class="header_text">汽车查询</span></el-menu-item>
      <el-sub-menu index="2">
        <template #title><span  class="header_text">汽车周边</span></template>
        <el-menu-item >
          <a href="https://www.wrc.com/en/" target="_blank">WRC</a></el-menu-item>
        <el-menu-item >
          <a href="https://www.fiawtcr.com/" target="_blank">WTCR</a>
          </el-menu-item>
        <el-menu-item >
          <a href="https://www.formula1.com/" target="_blank">F1</a>
          </el-menu-item>
        <el-menu-item >
          <a href="https://www.fia.com/" target="_blank">FIA-GT</a>
          </el-menu-item>
        <el-sub-menu>
          <template #title>竞速游戏</template>
          <el-menu-item>

            <a href="https://baike.baidu.com/item/%E6%9E%81%E9%99%90%E7%AB%9E%E9%80%9F%EF%BC%9A%E5%9C%B0%E5%B9%B3%E7%BA%BF5/57279365?fr=aladdin" target="_blank">Forza Horizon 5</a>

          </el-menu-item>

          <el-menu-item>

            <a href="https://store.playstation.com/en-us/product/UP0006-CUSA15081_00-NEEDFORSPEED2020" target="_blank">Need For Speed™:Heat</a>

            </el-menu-item>
          <el-menu-item>

            <a href="https://baike.baidu.com/item/%E5%B0%98%E5%9F%83%E6%8B%89%E5%8A%9B%E8%B5%9B2.0/23536662?fr=aladdin" target="_blank">DiRT Rally 2.0</a>

            </el-menu-item>
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
  a{
    text-decoration: none;
    color: #fff;
    display: inline-block;
    width: 100%;
    height: 100%;
    line-height: 35px;
  }
</style>