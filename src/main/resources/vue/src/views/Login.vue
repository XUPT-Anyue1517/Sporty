<template>
  <div style="width:100%;height:100vh;background:#232946;overflow: hidden">
      <div style="width:480px;margin:170px auto;border:1px solid white;border-radius: 15px;padding: 0 15px">
        <div style="font-size:40px;font-weight:bolder;color:#fff;text-align:center;margin: 25px 0">登录</div>
        <el-form :model="form" ref="form" size="large" style="text-align: center" :rules="rules">
          <el-form-item style="width: 95%;margin: 20px auto" prop="name">
            <el-input placeholder="用户名"
            v-model="form.name" />
          </el-form-item>
          <el-form-item style="width: 95%;margin: 20px auto" prop="password">
            <el-input placeholder="密码" v-model="form.password" show-password/>
          </el-form-item>
        </el-form>
        <div style="text-align: center">
          <el-button type="danger" style="width: 45.2%;height:40px;font-size: 19px;margin: 14px 10px 20px 10px"
                     @click="login"
          >登录</el-button>

          <el-button type="primary" style="width: 45.2%;height:40px;font-size: 19px;margin: 14px 10px 20px 10px"
                    @click="$router.push('/register')"
          >注册</el-button>
        </div>
      </div>
  </div>
</template>

<script>
import request from "@/utils/request";



export default {
  name:"Login",
  data(){
    return{
      form:{},
      rules:{
        name:[
          {required:true,message:'请输入用户名',trigger:'blur'}
        ],
        password:[
          {required:true,message:'请输入密码',trigger:'blur'},
        ]
      }
    }
  },
  methods:{
    login(){
      this.$refs['form'].validate((valid) => {
        if(valid){
          request.post("/user/login",this.form).then(res => {
            if(res.code == 0 ){
              this.$message.success("登录成功")
              sessionStorage.setItem("user",JSON.stringify(res.data))
              this.$router.push("/user")  //登录成功之后进行页面跳转
            }else{
              this.$message.error(res.msg)
            }
          })
        }
      })
    }
  }

}
</script>

<style>

</style>