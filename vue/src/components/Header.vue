<template>
  <div style="background-color: #303032;height:50px;line-height:50px;display:flex">
      <div style="width:400px;padding-left:10px;font-weight:bold;color:dodgerblue;font-size:20px">
        <span style="color: #ff2f2f;font-size: 30px">汽车交流分享系统管理端</span>
      </div>
      <div style="flex:1"></div>
      <div style="width:100px;padding-right:30px;padding-top:18px">
        <el-dropdown>
          <span class="el-dropdown-link" style="width: 80px">
            <div style="width:100%;height:100%;cursor: pointer;color: #fff">
              {{ loginName }}
            </div>
            <el-icon class="el-icon--right">
              <arrow-down />
            </el-icon>
          </span>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="$router.push('/man/person')">个人信息</el-dropdown-item>
              <el-dropdown-item @click="logout">退出登录</el-dropdown-item>
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </div>
  </div>
</template>

<script>
import router from "@/router";
import request from "@/utils/request";

export default {
  name: "Header",
  props: ['user'],
  data() {
    return {
      loginName:'管理员'
    }
  },
  created() {
    this.getLoginName()
    this.checkLogin()

    let str = sessionStorage.getItem("user_admin") || "{}"

    if(str === '{}'){
      this.$message.error("请先登录")
      router.push("/man/login")
    }

  },
  methods:{
    logout(){
      this.$router.push('/man/login')
      sessionStorage.clear()
    },
    getLoginName(){
      if(sessionStorage.getItem("user")){

        const usermassage = sessionStorage.getItem("user")
        this.loginName = JSON.parse(usermassage).name
      }
    },
    checkLogin(){
      request.get("/user",{}).then(res => {
        if(res.code === '-1'){
          this.$router.push("/man/login")
        }
      })
    }
  }
}
</script>

<style scoped>

</style>