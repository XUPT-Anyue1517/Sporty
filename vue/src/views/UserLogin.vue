<template>
  <div :style="background" style="width:100%;height:100vh;overflow: hidden ;">
    <div style="width: 100%;text-align: center">
      <img src="../assets/img/Sporty.png" style="width: 630px;height: 20vh;margin: 5px auto" alt="">
    </div>
      <div style="background-color: rgba(23,56,87,0.9);width:480px;margin:0 auto;border-radius: 15px;padding: 10px 15px">
        <div style="font-size:40px;font-weight:bolder;color:#fff;text-align:center;margin: 25px 0">账户登录</div>
        <el-form :model="form" ref="form" size="large" style="text-align: center" :rules="rules">
          <el-form-item style="width: 95%;margin: 20px auto" prop="name">
            <el-input placeholder="用户名" :prefix-icon="UserFilled"
            v-model="form.name" />
          </el-form-item>
          <el-form-item style="width: 95%;margin: 20px auto" prop="password">
            <el-input placeholder="密码" v-model="form.password" show-password/>
          </el-form-item>
        </el-form>
        <div style="width: 100%; float: right">
          <div style="flex: 1"></div>
          <el-button type="text" style=" float: right ;margin-right: 10px" @click="$router.push('userloginphone')">手机验证码登录</el-button>
        </div>
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

import {UserFilled} from '@element-plus/icons-vue'



export default {
  name:"Login",
  components:{
    UserFilled
  },
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
      },
      background: {
        // 背景图片地址
        backgroundImage: 'url(' + require('../assets/img/car/car_img/UserLoginBackImg.png') + ')',
        // 背景图片是否重复
        backgroundRepeat: 'no-repeat',
        // 背景图片大小
        backgroundSize: 'cover',
        // 背景颜色
        backgroundColor: '#000',
        // 背景图片位置
        backgroundPosition: 'center top'
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
              this.$router.push("/index")  //登录成功之后进行页面跳转
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