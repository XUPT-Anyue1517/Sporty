<template>
  <div style="width:100%;height:100vh;background:#2b4356;overflow: hidden;">
      <div style="width:480px;margin:130px auto;border:1px solid white;border-radius: 15px;padding: 0 15px">
        <div style="font-size:40px;font-weight:bolder;color:#fff;text-align:center;margin: 25px 0">欢迎注册</div>
        <el-form :model="form" ref="form"  size="large" style="text-align: center"  :rules="rules">
          <el-form-item style="width: 95%;margin: 20px auto" prop="name">
            <el-input placeholder="用户名" v-model="form.name" />
          </el-form-item>
          <el-form-item style="width: 95%;margin: 20px auto" prop="email">
            <el-input placeholder="邮箱" v-model="form.email" />
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="phone">
            <el-input placeholder="手机号码" v-model="form.phone" />
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="password">
            <el-input placeholder="密码" v-model="form.password" show-password/>
          </el-form-item>

          <el-form-item style="width: 95%;margin: 20px auto" prop="confirm">
            <el-input placeholder="确认密码" v-model="form.confirm" show-password/>
          </el-form-item>
        </el-form>
        <div style="text-align: center">
          <el-button type="primary" style="width: 92%;height:40px;font-size: 19px;margin: 14px 10px 20px 10px"
          @click="register"
          >注册</el-button>
        </div>
      </div>
  </div>
</template>

<script>
import request from "@/utils/request";



export default {
  name:"Register",
  data(){
    return{
      form:{},
      rules:{
        name:[
          {required:true,message:'请输入用户名',trigger:'blur'}
        ],
        email:[
          {required:true,message:'请输入邮箱',trigger:'blur'}
        ],
        phone:[
          {required:true,message:'请输入电话号码',trigger:'blur'}
        ],
        password:[
          {required:true,message:'请输入密码',trigger:'blur'},
        ],
        confirm:[
          {required:true,message:'请确认密码',trigger:'blur'},
        ]
      }
    }
  },
  methods:{
    register(){
      if(this.form.password !== this.form.confirm){
        this.$message.error("两次密码输入不一致")
        return
      }


      this.$refs['form'].validate((valid) => {
        if(valid) {
          request.post("/user/register",this.form).then(res => {
            if(res.code === '0' ){
              this.$message.success("注册成功")
              this.$router.push("/login")  //登录成功之后进行页面跳转
            }else{
              this.$message.error(res.msg)
            }
          })
        }
        })

    },
  }

}
</script>

<style>

</style>