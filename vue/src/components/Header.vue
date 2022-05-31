<template>
  <div style="height:50px;line-height:50px;border-bottom:1px solid #ccc;display:flex">
      <div style="width:300px;padding-left:10px;font-weight:bold;color:dodgerblue;font-size:20px">
        <img src="../assets/img/Sporty.png" width="180" height="50">
      </div>
      <div style="flex:1"></div>
      <div style="width:100px;padding-right:30px;padding-top:18px">
        <el-dropdown>
          <span class="el-dropdown-link">
            <div style="width:80%;height:100%;cursor: pointer;">
              {{ loginName }}
            </div>
            <el-icon class="el-icon--right">
              <arrow-down />
            </el-icon>
          </span>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item @click="$router.push('/person')">个人信息</el-dropdown-item>
              <el-dropdown-item @click="logout">退出登录</el-dropdown-item>
            </el-dropdown-menu>
          </template>
        </el-dropdown>
      </div>
  </div>
</template>

<script>
export default {
  name: "Header",
  props: ['user'],
  data() {
    return {
      loginName:''
    }
  },
  created() {
    this.getLoginName()
  },
  methods:{
    logout(){
      this.$router.push('/login')
      sessionStorage.clear()
    },
    getLoginName(){
      if(sessionStorage.getItem("user")){

        const usermassage = sessionStorage.getItem("user")
        this.loginName = JSON.parse(usermassage).name
      }

    }
  }
}
</script>

<style scoped>

</style>