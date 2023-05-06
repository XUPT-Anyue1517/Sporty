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
        <span style="color: #ff2f2f;font-size: 30px">汽车交流分享系统</span>
      </div>
      <el-menu-item index="/index"><span class="header_text">首页</span></el-menu-item>
      <el-menu-item index="/refit"><span  class="header_text">汽车改装</span></el-menu-item>
      <el-menu-item index="/blog"><span  class="header_text">汽车博客</span></el-menu-item>
      <el-menu-item index="/carai"><span  class="header_text">汽车识别</span></el-menu-item>
      <el-menu-item index="/carlease"><span  class="header_text">汽车租赁</span></el-menu-item>
      <el-menu-item index="/brandsearch"><span  class="header_text">汽车查询</span></el-menu-item>

      <div id="ifLogin" style="width:100px;padding-left:370px;padding-top:20px;">
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